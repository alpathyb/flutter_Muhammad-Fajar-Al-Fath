import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override 
  Widget build(BuildContext context){
    return CupertinoApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        primaryColor: Colors. lightGreen),
    );
  }
}