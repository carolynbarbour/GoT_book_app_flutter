import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/book.dart';

class BookProvider with ChangeNotifier {
  bool loading = false;
  bool isRequestError = false;
  late List<Book> books = [];
  Uri url =
      Uri.parse("https://www.anapioficeandfire.com/api/books?pageSize=50");

  getBookData() async {
    loading = true;
    try {
      final response = await http.get(url);
      final extractedData = jsonDecode(response.body) as List<dynamic>;

      getBooksFromData(extractedData);

      loading = false;
      notifyListeners();
    } catch (error) {
      loading = false;
      this.isRequestError = true;
      notifyListeners();

      rethrow;
    }
  }

  void getBooksFromData(List<dynamic> extractedData) {
    List<Book> booksReturned = [];
    for (var index = 0; index < extractedData.length; index++) {
      var book = Book.fromJson(extractedData[index]);
      booksReturned.add(book);
    }
    books = booksReturned;
  }
}
