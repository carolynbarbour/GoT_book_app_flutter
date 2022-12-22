import 'package:flutter/cupertino.dart';
import '../models/character.dart';

class Book with ChangeNotifier {
  var url;
  var name;
  var isbn;
  var authors;
  var numberOfPages;
  var publisher;
  var country;
  var released;
  var characterIds;

  Book(
      {this.url,
      this.name,
      this.isbn,
      this.authors,
      this.numberOfPages,
      this.publisher,
      this.country,
      this.released,
      this.characterIds});

  factory Book.fromJson(dynamic json) {
    return Book(
        url: json['url'],
        name: json['name'],
        isbn: json['isbn'],
        authors: json['authors'],
        numberOfPages: json['numberOfPages'],
        publisher: json['publisher'],
        country: json['country'],
        released: json['released'],
        characterIds: getIdsFromUrl(json['characters']));
  }

  static List<String> getIdsFromUrl(List<dynamic> jsonUrl) {
    List<String> characterIdsReturned = [];
    for (var character = 0; character < jsonUrl.length; character++) {
      var id = Character.getIdFromUrl(jsonUrl[character]);
      characterIdsReturned.add(id);
    }
    return characterIdsReturned;
  }
}
