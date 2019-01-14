import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "MY App",
      home: new HomePage(),
      theme:
          new ThemeData(primarySwatch: Colors.red, brightness: Brightness.dark),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String myText = "hello";


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("qwerty"),
      ),
      body: qwerty(),
    );
  }

  Widget qwerty() {
    return new Container(
      padding: const EdgeInsets.all(12.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(myText),
            new RaisedButton(
              child: new Text("Click"),
              onPressed: _changeText,
            )
          ],
        ),
      ),
    );
  }


  void _changeText() {
    setState(() {
      if(myText.startsWith("h")){
      myText = "welcome";}
      else{myText ="hello" ;}
    });
  }
  
}
