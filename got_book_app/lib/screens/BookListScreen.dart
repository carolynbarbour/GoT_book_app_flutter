import "package:flutter/material.dart";
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

    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: _isLoading
                ? Center(
                    child: CircularProgressIndicator(
                        backgroundColor: myContext.primaryColor))
                : bookData.loading
                    ? Center(
                        child: CircularProgressIndicator(
                            backgroundColor: myContext.primaryColor))
                    : Container(
                        padding: const EdgeInsets.all(32),
                        child: ListView.builder(
                            padding: const EdgeInsets.all(16.0),
                            itemCount: book.length,
                            itemBuilder: /*1*/ (context, i) {
                              // #docregion listTile
                              return ListTile(
                                title: Text(book[i].name,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                                subtitle: Text(
                                  "Number of Pages: ${book[i].numberOfPages.toString()}",
                                  style: TextStyle(
                                      color: Colors.grey[700],
                                      fontStyle: FontStyle.italic),
                                ),
                              );
                            }))));
  }

  Future<void> _getData() async {
    _isLoading = true;
    final bookData = Provider.of<BookProvider>(context, listen: false);
    bookData.getBookData();
    _isLoading = false;
  }
}
