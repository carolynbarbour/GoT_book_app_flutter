import 'package:isar/isar.dart';

import '../models/character.dart';

class CharacterRepository {
  late Isar _isar;

  void openSchema() {
    try {
      final isar = Isar.openSync([CharacterSchema]);
      _isar = isar;
    } catch (error) {}
  }

  Future<List<Character?>> getAllCharacters(List<int> ids) async {
    return _isar.characters.getAll(ids);
  }

  Future<Character?> getCharacter(int id) async {
    return _isar.characters.get(id);
  }

  void saveCharacters(List<Character> characters) async {
    await _isar.writeTxn(() async {
      await _isar.characters.putAll(characters);
    });
  }
}
