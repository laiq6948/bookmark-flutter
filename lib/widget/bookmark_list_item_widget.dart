import 'package:flutter/material.dart';
import 'package:my_bookmark/model/bookmark.dart';
import 'package:my_bookmark/util/nagivation_util.dart';

class BookmarkListItemWidget extends StatelessWidget {
  final Bookmark bookmark;

  BookmarkListItemWidget(this.bookmark);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: InkWell(
        onTap: () => navigateToViewBookmarkPage(bookmark, context),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(bookmark.title,
                    style: Theme.of(context).textTheme.headline6),
                SizedBox(height: 6),
                Text(bookmark.link,
                    style: Theme.of(context).textTheme.subtitle2),
              ],
            ),
            Hero(tag: bookmark.link, child: Icon(Icons.star, size: 40)),
          ],
        ),
      ),
    );
  }
}
