import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:got_book_app/screens/BookScreen.dart';
import 'package:got_book_app/screens/BookListScreen.dart';
import 'package:got_book_app/provider/book_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => BookProvider(),
        child: MaterialApp(
            title: 'Game of Throne Books',
            theme: ThemeData(
              appBarTheme: const AppBarTheme(
                  backgroundColor: Colors.white, foregroundColor: Colors.black),
            ),
            home: BookListScreen(),
            routes: {BookScreen.routeName: (context) => BookScreen()}));
  }
}
