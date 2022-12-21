import "package:flutter/material.dart";
import 'package:got_book_app/screens/BookScreen.dart';
import 'package:provider/provider.dart';
import 'package:got_book_app/provider/book_provider.dart';

class BookListScreen extends StatefulWidget {
  static const routeName = "/bookListScreen";

  @override
  _BookListScreenState createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _getData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bookData = Provider.of<BookProvider>(context);
    final myContext = Theme.of(context);

    var book = bookData.books;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text("Game of Thrones books"),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        body: SafeArea(
            child: _isLoading
                ? Center(
                    child: CircularProgressIndicator(
                        backgroundColor: myContext.primaryColor))
                : bookData.loading
                    ? Center(
                        child: CircularProgressIndicator(
                            backgroundColor: myContext.primaryColor))
                    : Container(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.builder(
                            padding: const EdgeInsets.all(8.0),
                            itemCount: book.length,
                            itemBuilder: /*1*/ (context, i) {
                              // #docregion listTile
                              return ListTile(
                                  title: Text(book[i].name,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                  subtitle: Text(
                                    "${book[i].numberOfPages.toString()} pages",
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                  trailing: const Icon(
                                    Icons.chevron_right_rounded,
                                    color: Colors.grey,
                                  ),
                                  onTap: (() => Navigator.pushNamed(
                                      context, BookScreen.routeName,
                                      arguments:
                                          BookScreenArguments(book[i]))));
                            }))));
  }

  Future<void> _getData() async {
    _isLoading = true;
    final bookData = Provider.of<BookProvider>(context, listen: false);
    bookData.getBookData();
    _isLoading = false;
  }
}
