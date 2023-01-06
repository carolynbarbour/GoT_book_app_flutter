import 'package:flutter/cupertino.dart';
import 'package:isar/isar.dart';

part 'character.g.dart';

@collection
class Character with ChangeNotifier {
  Id id;
  String url;
  String? name;
  String? culture;
  String? born;
  String? died;
  List<String>? titles;
  List<String>? aliases;
  String? father;
  String? mother;
  String? spouse;
  List<String>? allegiances;
  List<String>? books;
  List<String>? povBooks;
  List<String>? tvSeries;
  List<String>? playedBy;

  late List<Attribute> attributes;

  Character({
    required this.id,
    required this.url,
    this.name,
    this.culture,
    this.born,
    this.died,
    this.titles,
    this.aliases,
    this.father,
    this.mother,
    this.spouse,
    this.allegiances,
    this.books,
    this.povBooks,
    this.tvSeries,
    this.playedBy,
  }) {
    attributes = [
      Attribute(key: 'Culture', value: culture),
      Attribute(key: 'Born', value: born),
      Attribute(key: 'Died', value: died),
      Attribute(key: 'Father', value: father),
      Attribute(key: 'Mother', value: mother),
      Attribute(key: 'Spouse', value: spouse),
      Attribute(key: 'Titles', value: titles),
      Attribute(key: 'Aliases', value: aliases),
      Attribute(key: 'Allegiances', value: allegiances),
      Attribute(key: 'Books', value: books),
      Attribute(key: 'PoV Books', value: povBooks),
      Attribute(key: 'TV Series', value: tvSeries),
      Attribute(key: 'Played By', value: playedBy),
    ];
  }

  factory Character.fromJson(dynamic json) {
    return Character(
      id: getIdFromUrl(json['url']),
      url: json['url'],
      name: json['name'],
      culture: json['culture'],
      born: json['born'],
      died: json['died'],
      titles: [...json['titles']],
      aliases: [...json['aliases']],
      father: json['father'],
      mother: json['mother'],
      spouse: json['spouse'],
      allegiances: [...json['allegiances']],
      books: [...json['books']],
      povBooks: [...json['povBooks']],
      tvSeries: [...json['tvSeries']],
      playedBy: [...json['playedBy']],
    );
  }

  static int getIdFromUrl(dynamic jsonUrl) {
    String url = jsonUrl as String;
    var splitUrl = url.split("/");
    int id = int.parse(splitUrl.last);
    return id;
  }

  List<Attribute> filledAttributes() {
    List<Attribute> filled = <Attribute>[];

    for (int i = 0; i < attributes.length; i++) {
      var attribute = attributes[i];
      if (attribute.value != null && !attribute.value.isEmpty) {
        if (attribute.value is List<String> &&
            attribute.value.length == 1 &&
            attribute.value[0].isEmpty) {
          break;
        }
        filled.add(attribute);
      }
    }

    return filled;
  }
}

class Attribute {
  String key;
  dynamic value;

  Attribute({required this.key, required this.value});
}
