import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:my_bookmark/list.dart';
import 'package:my_bookmark/providers.dart';

class Home extends HookWidget {
  final items = List.generate(10, (index) => 'Item: $index');
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final hsp = useProvider(homeStateProvider);
    final homeState = useProvider(homeStateProvider.state);

    // return Scaffold(
    //   body: Center(
    //     child: Text('hello, first time.'),
    //   ),
    // );
    return Scaffold(
      appBar: AppBar(
        title: Text('Dev'),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: hsp.onPageChanged,
        children: [
          MyList1(),
          MyList2(),
          MyList3(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.youtube_searched_for_rounded),
            label: '2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.animation),
            label: '3',
          ),
        ],
        currentIndex: homeState.page,
        fixedColor: Colors.pink[300],
        iconSize: 24,
        // showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          hsp.onItemTapped(index, _pageController);
        },
      ),
    );
  }
}


