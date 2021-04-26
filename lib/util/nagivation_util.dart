import 'package:flutter/material.dart';
import 'package:my_bookmark/model/bookmark.dart';
import 'package:my_bookmark/page/add_bookmark_page.dart';
import 'package:my_bookmark/page/view_bookmark_page.dart';

void navigateToViewBookmarkPage(Bookmark bookmark, BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => ViewBookmarkPage(bookmark)),
  );
}

Future navigateToAddBookmarkPage(BuildContext context) {
  return Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => AddBookmarkPage()),
  );
}
