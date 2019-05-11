import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Foundation.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    if (isIos) {
      return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text(widget.title),
            trailing: Icon(CupertinoIcons.location),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Hello IOS"),
                CupertinoButton(
                  child: Text("Press me"),
                  onPressed: () => {},
                  color: Colors.pinkAccent,
                )
              ],
            ),
          ));
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[Icon(Icons.location_on)],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Hello Android"),
              RaisedButton(
                onPressed: () {},
                child: Text(
                  'Press me',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.pinkAccent,
              )
            ],
          ),
        ),
      );
    }
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
