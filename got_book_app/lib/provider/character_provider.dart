import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/character.dart';

class CharacterProvider with ChangeNotifier {
  bool loading = false;
  bool isRequestError = false;
  late List<Character> characters = [];
  Uri url = Uri.parse("https://www.anapioficeandfire.com/api/characters");

  getCharacterData() async {
    loading = true;
    try {
      final response = await http.get(url);
      final extractedData = jsonDecode(response.body) as List<dynamic>;

      getCharactersFromData(extractedData);

      loading = false;
      notifyListeners();
    } catch (error) {
      loading = false;
      this.isRequestError = true;
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
    characters = charactersReturned;
  }
}
