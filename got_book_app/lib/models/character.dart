import 'package:flutter/cupertino.dart';

class Character with ChangeNotifier {
  var id;
  var url;
  var name;
  var culture;
  var born;
  var died;
  var titles;
  var aliases;
  var father;
  var mother;
  var spouse;
  var allegiances;
  var books;
  var povBooks;
  var tvSeries;
  var playedBy;

  Character({
    this.id,
    this.url,
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
  });

  factory Character.fromJson(dynamic json) {
    return Character(
      id: getIdFromUrl(json['url']),
      url: json['url'],
      name: json['name'],
      culture: json['culture'],
      born: json['born'],
      died: json['died'],
      titles: json['titles'],
      aliases: json['aliases'],
      father: json['father'],
      mother: json['mother'],
      spouse: json['spouse'],
      allegiances: json['allegiances'],
      books: json['books'],
      povBooks: json['povBooks'],
      tvSeries: json['tvSeries'],
      playedBy: json['playedBy'],
    );
  }

  static String getIdFromUrl(dynamic jsonUrl) {
    String url = jsonUrl as String;
    var splitUrl = url.split("/");
    return splitUrl.last;
  }
}
