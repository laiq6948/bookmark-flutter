import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_bookmark/providers.dart';

// class Splash extends HookWidget {
//   @override
//   Widget build(BuildContext context) {
//     final SharedPreferencesClient spc = useProvider(introductionFlagProvider);
//     bool isDisplayed = false;
//     spc.getIntroductionFlag().then((param) => isDisplayed = param);
//
//     if (isDisplayed) {
//       return RiverpodHooksApp();
//     } else {
//       spc.saveIntroductionFlag();
//       return IntroScreen();
//     }
//   }
// }

class IntroScreen extends HookWidget {
  final counter = useProvider(counterProvider);
  final state = useProvider(counterProvider.state);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('This is a counter.')),
      body: Center(
        child: Text(state.toString()),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () => counter.increment(),
            child: Icon(Icons.add),
          ),
          SizedBox(width: 5),
          FloatingActionButton(
            onPressed: () => counter.decrement(),
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
