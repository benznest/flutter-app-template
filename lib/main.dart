import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Page(title: 'My App'),
    );
  }
}

class Page extends StatefulWidget {
  Page({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Center(child: Text("Hello",style: TextStyle(fontSize: 28))));
  }
}
