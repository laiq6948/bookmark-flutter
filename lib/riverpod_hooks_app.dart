import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';
import 'package:my_bookmark/home.dart';
import 'package:my_bookmark/introduction_page.dart';
import 'package:my_bookmark/login.dart';
import 'package:my_bookmark/nav_bar_example.dart';
import 'package:my_bookmark/splash.dart';

class RiverpodHooksApp extends HookWidget {
  // const RiverpodHooksApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final String value = useProvider(helloWorldProvider);

    // final SharedPreferencesClient spc = useProvider(introductionFlagProvider);
    // bool isDisplayed = false;
    // spc.getIntroductionFlag().then((param) => isDisplayed = param);
    // TODO: hold the intro flag by using shared preferences
    bool isDisplayed = false;

    return MaterialApp(
      // home: isDisplayed ? IntroScreen() : Home(),
      home: isDisplayed ? Introduction() : LoginScreen(),
    );
  }
}
