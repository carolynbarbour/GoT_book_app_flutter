import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:core';

import '../repositories/character_repository.dart';
import '../models/character.dart';

class CharacterProvider with ChangeNotifier {
  bool loading = false;
  bool isRequestError = false;
  late List<Character?> characters = [];
  late CharacterRepository _characterRepository;
  int _characterDataError = 0;

  String pageUrl = "page=";
  String baseUrl = "https://www.anapioficeandfire.com/api/characters?";
  String pageSizeUrl = "pageSize=50";

  CharacterProvider() {
    _characterRepository = CharacterRepository();
  }

  void initialise() {
    _characterRepository.openSchema();
  }

  getCharacterData(List<int> ids) async {
    loading = true;

    try {
      characters = await _characterRepository.getAllCharacters(ids);
      if (characters.contains(null)) {
        List<int> nullCharacterIds = <int>[];
        for (int i = 0; i < characters.length; i++) {
          if (characters[i] == null) {
            nullCharacterIds.add(ids[i]);
          }
        }

        await getSpecificCharacterData(nullCharacterIds.first);
      }
      loading = false;
      notifyListeners();
    } catch (error) {
      _characterDataError++;
      if (_characterDataError < 2) {
        try {
          getCharacterFirstRequestData();
          getCharacterData(ids);
        } catch (error) {
          loading = false;
          isRequestError = true;
          notifyListeners();
          rethrow;
        }
      }
      loading = false;
      isRequestError = true;
      notifyListeners();
      rethrow;
    }
  }

  getCharacterFirstRequestData() async {
    loading = true;
    try {
      final response = await http.get(Uri.parse(baseUrl + pageSizeUrl));
      final extractedData = jsonDecode(response.body) as List<dynamic>;

      getCharactersFromData(extractedData);

      loading = false;
      notifyListeners();
    } catch (error) {
      loading = false;
      isRequestError = true;
      notifyListeners();
      rethrow;
    }
  }

  getSpecificCharacterData(int characterID) async {
    loading = true;
    try {
      var pageNeedingRequest = (characterID / 50).floor() + 1;
      var urlForSpecificCharacter =
          "$baseUrl$pageSizeUrl&$pageUrl$pageNeedingRequest";
      final response = await http.get(Uri.parse(urlForSpecificCharacter));
      final extractedData = jsonDecode(response.body) as List<dynamic>;

      getCharactersFromData(extractedData);

      loading = false;
      notifyListeners();
    } catch (error) {
      loading = false;
      isRequestError = true;
      notifyListeners();
      rethrow;
    }
  }

  void getCharactersFromData(List<dynamic> extractedData) {
    List<Character> charactersReturned = [];
    for (var index = 0; index < extractedData.length; index++) {
      var character = Character.fromJson(extractedData[index]);
      charactersReturned.add(character);
    }

    _characterRepository.saveCharacters(charactersReturned);
  }
}
