import "package:flutter/material.dart";
import "package:intl/intl.dart";
import 'package:got_book_app/models/book.dart';

class BookScreenArguments {
  final Book book;
  BookScreenArguments(this.book);
}

class BookScreen extends StatefulWidget {
  static const routeName = "/bookScreen";

  @override
  _BookScreenState createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as BookScreenArguments;
    var book = args.book;

    DateTime dateTimeOfRelease = DateTime.parse(book.released);

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            title: Text("${book.name}"),
            backgroundColor: Colors.black,
            foregroundColor: Colors.white),
        body: SafeArea(
            child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Number of pages: ${book.numberOfPages}",
                        style: const TextStyle(color: Colors.grey)),
                    Text("Country: ${book.country}",
                        style: const TextStyle(color: Colors.grey)),
                    Text(
                        "Date of Release: ${DateFormat('yyyy-MM').format(dateTimeOfRelease)}",
                        style: const TextStyle(color: Colors.grey)),
                    Text(
                        "Author(s): ${book.authors.toString().replaceAll('[', '').replaceAll(']', '')}",
                        style: const TextStyle(color: Colors.grey))
                  ],
                ))));
  }
}
