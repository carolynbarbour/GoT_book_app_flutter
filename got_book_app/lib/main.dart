import 'package:flutter/material.dart';
import 'package:got_book_app/provider/character_provider.dart';
import 'package:got_book_app/screens/CharacterListScreen.dart';
import 'package:provider/provider.dart';

import 'package:got_book_app/screens/BookScreen.dart';
import 'package:got_book_app/screens/BookListScreen.dart';
import 'package:got_book_app/screens/CharacterScreen.dart';
import 'package:got_book_app/provider/book_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => BookProvider()),
          ChangeNotifierProvider(create: (context) => CharacterProvider())
        ],
        child: MaterialApp(
            home: DefaultTabController(
                length: 2,
                child: Scaffold(
                    appBar: AppBar(
                      bottom: const TabBar(tabs: [
                        Tab(icon: Icon(Icons.book_rounded)),
                        Tab(icon: Icon(Icons.person_rounded)),
                      ]),
                      title: const Text('Game Of Thrones'),
                    ),
                    body: TabBarView(children: [
                      BookListScreen(),
                      CharacterListScreen(),
                    ]))),
            routes: {
              BookScreen.routeName: (context) => BookScreen(),
              CharacterScreen.routeName: (context) => CharacterScreen()
            }));
  }
}
