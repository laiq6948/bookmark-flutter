import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_bookmark/page/bookmarks_page.dart';
import 'package:my_bookmark/riverpod_hooks_app.dart';
import 'package:my_bookmark/splash.dart';

void main() {
  // Run My Bookmark App
  // runApp(MyApp());

  // Run Riverpod + Hooks App
  runApp(ProviderScope(
    child: RiverpodHooksApp(),
  ));
}

// My Bookmark App
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BookmarksPage(),
    );
  }
}
