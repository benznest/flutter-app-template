import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App Template Basic',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'My App Template Basic'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: PageView(
          controller: _pageController,
          children: <Widget>[buildBody("Home"), buildBody("Message")]),
      drawer: buildDrawer(),
      bottomNavigationBar: buildBottomAppBar(),
      floatingActionButton: buildFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  BottomAppBar buildBottomAppBar() {
    return BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.home, color: Colors.grey),
                  onPressed: () {
                    _pageController.animateToPage(0,
                        curve: Curves.decelerate,
                        duration: Duration(milliseconds: 300));
                  }),
              IconButton(
                  icon: Icon(Icons.message, color: Colors.grey),
                  onPressed: () {
                    _pageController.animateToPage(1,
                        curve: Curves.decelerate,
                        duration: Duration(milliseconds: 300));
                  }),
            ]));
  }

  Drawer buildDrawer() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            padding: EdgeInsets.all(0),
            child: Container(
                height: 150,
                color: Colors.blue,
                child: Center(
                    child: Column(mainAxisSize: MainAxisSize.min, children: <
                        Widget>[
                      CircleAvatar(radius: 32, child: Icon(Icons.person, size: 36)),
                      Padding(
                          padding: EdgeInsets.all(8),
                          child: Text("USER@BENZNESTSTUDIOS",
                              style: TextStyle(fontSize: 18, color: Colors.white)))
                    ]))),
          ),
          ListTile(
            title: Text("MENU 1"),
            subtitle: Text("description.."),
          ),
          ListTile(
            title: Text("MENU 2"),
            subtitle: Text("description.."),
          ),
        ],
      ),
    );
  }

  Widget buildBody(String data) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '$data',
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {},
      tooltip: 'Increment',
      child: Icon(Icons.add),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(widget.title),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.search), onPressed: () {}),
        IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
      ],
    );
  }
}