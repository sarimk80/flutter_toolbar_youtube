import 'package:flutter/material.dart';
import 'src/MyHomePage.dart';
import 'src/Foundation.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    if (isIos) {
      return CupertinoApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(
          title: "IOS",
        ),
      );
    } else {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        home: MyHomePage(
          title: "Android",
        ),
      );
    }
  }
}
