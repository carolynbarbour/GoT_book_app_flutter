import "package:flutter/material.dart";
import 'package:getwidget/getwidget.dart';
import "package:intl/intl.dart";
import "package:collection/collection.dart";
import 'package:got_book_app/models/book.dart';
import 'package:provider/provider.dart';
import 'package:got_book_app/provider/character_provider.dart';

import '../models/character.dart';

class CharacterScreenArguments {
  final Character? character;
  CharacterScreenArguments(this.character);
}

class CharacterScreen extends StatefulWidget {
  static const routeName = "/characterScreen";

  @override
  _CharacterScreenState createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  bool _isLoading = false;
  bool _loadedData = false;
  late Character? _character;

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as CharacterScreenArguments;
    _character = args.character;
    final myContext = Theme.of(context);

    var filledAttributes = _character?.filledAttributes();

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            title: Text(_character?.name == null
                ? "Name Unknown"
                : "${_character?.name}"),
            backgroundColor: Colors.black,
            foregroundColor: Colors.white),
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView.builder(
                    itemCount: filledAttributes?.length ?? 0,
                    itemBuilder: (context, i) {
                      var attribute = filledAttributes?[i];
                      String attributeValue = "";
                      if (attribute?.value is List<String>) {
                        var valueList = attribute?.value as List<String>;
                        for (int i = 0; i < valueList.length; i++) {
                          if (i != valueList.length - 1) // last one
                          {
                            attributeValue += "${valueList[i]}, ";
                          } else {
                            attributeValue += valueList[i];
                          }
                        }
                      } else {
                        attributeValue = attribute?.value ?? "";
                      }

                      return GFListTile(
                        title: Text(attribute?.key ?? "Unknown attribute key",
                            style: const TextStyle(color: Colors.black)),
                        subTitle: Text(attributeValue,
                            style: const TextStyle(color: Colors.black)),
                      );
                    }))));
  }
}
