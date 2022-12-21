import 'package:flutter/cupertino.dart';

class Book with ChangeNotifier {
  var url;
  var name;
  var isbn;
  var authors;
  var numberOfPages;
  var publisher;
  var country;
  var released;
  var characters;

  Book(
      {this.url,
      this.name,
      this.isbn,
      this.authors,
      this.numberOfPages,
      this.publisher,
      this.country,
      this.released,
      this.characters});

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
        characters: json['characters']);
  }
}
