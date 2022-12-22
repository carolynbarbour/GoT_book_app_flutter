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
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
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
                                      color: Colors.grey, fontSize: 16.0)))
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text("${book.numberOfPages}",
                                  style: const TextStyle(
                                      color: Colors.grey, fontSize: 16.0))),
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text("${book.country}",
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
                                  book.authors
                                      .toString()
                                      .replaceAll('[', '')
                                      .replaceAll(']', ''),
                                  style: const TextStyle(
                                      color: Colors.grey, fontSize: 16.0)))
                        ],
                      )
                    ]))));
  }
}
