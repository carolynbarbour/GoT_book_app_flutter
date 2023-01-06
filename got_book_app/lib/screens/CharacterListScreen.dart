import "package:flutter/material.dart";
import 'package:got_book_app/screens/CharacterScreen.dart';
import 'package:provider/provider.dart';
import 'package:got_book_app/provider/character_provider.dart';

class CharacterListScreen extends StatefulWidget {
  static const routeName = "/characterListScreen";

  const CharacterListScreen({super.key});

  @override
  _CharacterListScreenState createState() => _CharacterListScreenState();
}

class _CharacterListScreenState extends State<CharacterListScreen> {
  bool _isLoading = false;
  bool _loadedData = false;

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
      await _getData();
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

    var characters = characterData.characters;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text("Characters"),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        body: SafeArea(
            child: _isLoading
                ? Center(
                    child: CircularProgressIndicator(
                        backgroundColor: myContext.primaryColor))
                : characterData.loading
                    ? Center(
                        child: CircularProgressIndicator(
                            backgroundColor: myContext.primaryColor))
                    : Container(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.builder(
                            padding: const EdgeInsets.all(8.0),
                            itemCount: characters.length,
                            itemBuilder: /*1*/ (context, i) {
                              var character = characters[i];
                              // #docregion listTile
                              return ListTile(
                                  title: Text(character?.name ?? "Unknown name",
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                  trailing: const Icon(
                                    Icons.chevron_right_rounded,
                                    color: Colors.grey,
                                  ),
                                  onTap: (() => Navigator.pushNamed(
                                      context, CharacterScreen.routeName,
                                      arguments:
                                          CharacterScreenArguments(character))),
                                  enabled: character != null);
                            }))));
  }

  Future<void> _getData() async {
    _isLoading = true;
    final characterData =
        Provider.of<CharacterProvider>(context, listen: false);
    characterData.getCharacterData(List<int>.generate(25, (i) => i + 1));
    _isLoading = false;
  }
}
