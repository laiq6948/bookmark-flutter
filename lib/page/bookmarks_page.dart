import 'package:flutter/material.dart';
import 'package:my_bookmark/model/bookmark.dart';
import 'package:my_bookmark/util/nagivation_util.dart';
import 'package:my_bookmark/widget/bookmarks_grid_widget.dart';
import 'package:my_bookmark/widget/bookmarks_list_widget.dart';

class BookmarksPage extends StatefulWidget {
  @override
  _BookmarksPageState createState() => _BookmarksPageState();
}

class _BookmarksPageState extends State<BookmarksPage> {
  bool isGridMode = false;

  // Update here initially displayed list(Grid).
  List<Bookmark> bookmarksList = [
    Bookmark('Google', 'https://google.com/'),
    Bookmark('Mozilla', 'https://developer.mozilla.org/'),
    Bookmark('Youtube', 'https://www.youtube.com/'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Bookmarks"),
        actions: <Widget>[
          IconButton(
            icon: isGridMode
                ? Icon(Icons.list, color: Colors.white)
                : Icon(Icons.grid_on, color: Colors.white),
            onPressed: () {
              setState(() {
                isGridMode = !isGridMode;
              });
            },
          )
        ],
      ),
      // body: BookmarksListWidget(bookmarksList),
      body: isGridMode
          ? BookmarksGridWidget(bookmarksList)
          : BookmarksListWidget(bookmarksList),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.add),
        onPressed: () => onAddButtonPressed(context),
        label: Text('Add'),
      ),
    );
  }

  void onAddButtonPressed(BuildContext context) async {
    final result = await navigateToAddBookmarkPage(context);

    if (result != null && result is Bookmark) {
      setState(() {
        bookmarksList.add(result);
      });
    }
  }
}
