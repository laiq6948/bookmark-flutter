import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyList1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: buildBasicListView(),
      ),
    );
  }

  Widget buildBasicListView() => ListView(
        children: [
          ListTile(
            leading: Icon(Icons.arrow_forward_ios),
            title: Text('list1'),
            subtitle: Text('sublist1'),
            trailing: Icon(Icons.star, color: Colors.orange),
          ),
          ListTile(
            leading: Icon(Icons.arrow_forward_ios),
            title: Text('list2'),
            subtitle: Text('sublist2'),
            trailing: Icon(Icons.mood, color: Colors.blue),
          ),
          ListTile(
            leading: Icon(Icons.arrow_forward_ios),
            title: Text('list3'),
            subtitle: Text('sublist3'),
            trailing: Icon(Icons.star, color: Colors.black),
          ),
          ListTile(
              leading: Icon(Icons.delete_forever, color: Colors.red),
              title: Text('Delete'),
              onTap: () {
                print('Deleted');
              }),
        ],
      );
}

class MyList2 extends StatelessWidget {
  final items = List.generate(10, (index) => 'Item: $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: buildBasicListView(context),
      ),
    );
  }

  Widget buildBasicListView(context) => ListView.separated(
        separatorBuilder: (context, index) => Divider(color: Colors.black),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            title: Text(item),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                return Scaffold(
                  appBar: AppBar(
                    title: Text('WebView'),
                  ),
                  body: WebView(
                    // onPageFinished: (url) {
                    //   setState(() {
                    //     _isLoadingWebPage = false;
                    //   });
                    // },
                    initialUrl: 'https://google.com',
                    javascriptMode: JavascriptMode.unrestricted,
                  ),
                );
              }));
            },
          );
        },
      );
}

class MyList3 extends StatelessWidget {
  final items = List.generate(10, (index) => 'Item: $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 10,
        child: buildBasicListView(context),
      ),
    );
  }

  Widget buildBasicListView(context) => ListView.separated(
        padding: EdgeInsets.all(16),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => Divider(),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 16),
            child: Text(item),
          );
        },
      );
}
