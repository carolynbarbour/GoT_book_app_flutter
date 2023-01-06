import "package:flutter/material.dart";
import 'package:got_book_app/screens/CharacterScreen.dart';
import "package:intl/intl.dart";
import "package:collection/collection.dart";
import 'package:got_book_app/models/book.dart';
import 'package:provider/provider.dart';
import 'package:got_book_app/provider/character_provider.dart';

import '../models/character.dart';

class BookScreenArguments {
  final Book book;
  BookScreenArguments(this.book);
}

class BookScreen extends StatefulWidget {
  static const routeName = "/bookScreen";

  const BookScreen({super.key});

  @override
  _BookScreenState createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  bool _isLoading = false;
  bool _loadedData = false;
  late Book _book;

  @override
  void initState() {
    super.initState();

    final characterData =
        Provider.of<CharacterProvider>(context, listen: false);

    characterData.initialise();
  }

  @override
  void didChangeDependencies() async {
    if (!_loadedData) {
      final args =
          ModalRoute.of(context)!.settings.arguments as BookScreenArguments;
      _book = args.book;
      await _getData(_book);
      _loadedData = true;
    }

    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final characterData = Provider.of<CharacterProvider>(context);
    final myContext = Theme.of(context);

    var allCharacters = characterData.characters;

    DateTime dateTimeOfRelease = DateTime.parse(_book.released);

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            title: Text("${_book.name}"),
            backgroundColor: Colors.black,
            foregroundColor: Colors.white),
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                    child: Column(mainAxisSize: MainAxisSize.max, children: [
                  Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 4.0),
                                child: Text("Number of pages:",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16.0))),
                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 4.0),
                                child: Text("Country:",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16.0))),
                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 4.0),
                                child: Text("Date of Release:",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16.0))),
                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 4.0),
                                child: Text("Author(s):",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16.0))),
                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 4.0),
                                child: Text("Characters:",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16.0))),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4.0),
                                child: Text("${_book.numberOfPages}",
                                    style: const TextStyle(
                                        color: Colors.grey, fontSize: 16.0))),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4.0),
                                child: Text("${_book.country}",
                                    style: const TextStyle(
                                        color: Colors.grey, fontSize: 16.0))),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4.0),
                                child: Text(
                                    DateFormat('MM-yyyy')
                                        .format(dateTimeOfRelease),
                                    style: const TextStyle(
                                        color: Colors.grey, fontSize: 16.0))),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4.0),
                                child: Text(
                                    _book.authors
                                        .toString()
                                        .replaceAll('[', '')
                                        .replaceAll(']', ''),
                                    style: const TextStyle(
                                        color: Colors.grey, fontSize: 16.0))),
                            const Padding(
                                padding: EdgeInsets.symmetric(vertical: 4.0),
                                child: Text("",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16.0)))
                          ],
                        )
                      ]),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _isLoading
                          ? Center(
                              child: CircularProgressIndicator(
                                  backgroundColor: myContext.primaryColor))
                          : characterData.loading
                              ? Center(
                                  child: CircularProgressIndicator(
                                      backgroundColor: myContext.primaryColor))
                              : Expanded(
                                  child: ListView.builder(
                                      itemCount: _book.characterIds.length,
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      itemBuilder: (context, i) {
                                        Character? character;
                                        character =
                                            allCharacters.firstWhereOrNull(
                                          (element) =>
                                              element?.id ==
                                              _book.characterIds[i],
                                        );

                                        return ListTile(
                                          title: Text(
                                              character != null
                                                  ? "${character.name}"
                                                  : "Id because we haven't loaded the character: ${_book.characterIds[i]}",
                                              style: const TextStyle(
                                                  color: Colors.black)),
                                          trailing: const Icon(
                                            Icons.chevron_right_rounded,
                                            color: Colors.grey,
                                          ),
                                          onTap: (() => Navigator.pushNamed(
                                              context,
                                              CharacterScreen.routeName,
                                              arguments:
                                                  CharacterScreenArguments(
                                                      character))),
                                          enabled: character != null,
                                        );
                                      }))
                    ],
                  )
                ])))));
  }

  Future<void> _getData(Book book) async {
    _isLoading = true;
    final characterData =
        Provider.of<CharacterProvider>(context, listen: false);
    characterData.getCharacterData(book.characterIds);
    _isLoading = false;
  }
}
