import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_bookmark/home.dart';
import 'package:my_bookmark/home_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Hello World
final helloWorldProvider = Provider((_) => 'Hello world');

// Counter
final counterProvider = StateNotifierProvider((_) => Counter());

class Counter extends StateNotifier<int> {
  Counter() : super(0);

  void increment() => state++;

  void decrement() => state--;
}

// Introduction Page Flag
final introductionFlagProvider = Provider((_) => SharedPreferencesClient());

class SharedPreferencesClient {
  Future<bool> getIntroductionFlag() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isDisplayed') ?? false;
  }

  Future<void> saveIntroductionFlag() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDisplayed', true);
  }
}

// Nav Bar Application
final homeStateProvider = StateNotifierProvider((_) => HomeStateProvider());

class HomeStateProvider extends StateNotifier<HomeState> {
  HomeStateProvider() : super(const HomeState());

  void initState() {
    /*TODO*/
  }

  void dispose() {
    /*TODO*/
  }

  void onItemTapped(int index, PageController pageController) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  void onPageChanged(int index) {
    state = state.copyWith(page: index);
  }
}
