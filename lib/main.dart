import 'package:flutter/material.dart';
import 'package:my_bookmark/page/bookmarks_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return FlutterLogo();
    return MaterialApp(
      home: BookmarksPage(),
    );
  }
}

