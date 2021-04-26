import 'package:flutter/material.dart';
import 'package:my_bookmark/model/bookmark.dart';
import 'package:my_bookmark/widget/bookmark_list_item_widget.dart';

class BookmarksListWidget extends StatelessWidget {
  final List<Bookmark> bookmarksList;

  BookmarksListWidget(this.bookmarksList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: bookmarksList.length,
      itemBuilder: (BuildContext context, int index) {
        return BookmarkListItemWidget(bookmarksList[index]);
        // return BookmarkListTileWidget(bookmarksList[index]);
      },
    );
  }
}
