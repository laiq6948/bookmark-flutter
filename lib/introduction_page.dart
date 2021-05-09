import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:my_bookmark/home.dart';

class Introduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Title of first page",
          body:
              "Here you can write the description of the page, to explain someting...",
          image: Center(
            child:
                Image.network("https://domaine.com/image.png", height: 175.0),
          ),
        ),
        PageViewModel(
          title: "Title of first page",
          body:
              "Here you can write the description of the page, to explain someting...",
          image:
              Center(child: Image.asset("res/images/logo.png", height: 175.0)),
          decoration: const PageDecoration(
            pageColor: Colors.blue,
          ),
        ),
        PageViewModel(
          title: "Title of first page",
          body:
              "Here you can write the description of the page, to explain someting...",
          image: const Center(child: Icon(Icons.android)),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(color: Colors.orange),
            bodyTextStyle:
                TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
          ),
        ),
        PageViewModel(
          title: "Title of first page",
          body:
              "Here you can write the description of the page, to explain someting...",
          image: const Center(child: Icon(Icons.android)),
          footer: ElevatedButton(
            onPressed: () {
              // On button presed
            },
            child: const Text("Let's Go !"),
          ),
        ),
        PageViewModel(
          title: "Title of first page",
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Click on "),
              Icon(Icons.edit),
              Text(" to edit a post"),
            ],
          ),
          image: const Center(child: Icon(Icons.android)),
        ),
      ],
      onDone: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return Home();
        }));
      },
      showSkipButton: true,
      // showNextButton: false,
      // skip: const Text("Skip"),
      // done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      skip: const Text("Skip"),
      next: const Icon(Icons.navigate_next),
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
    );
  }
}
