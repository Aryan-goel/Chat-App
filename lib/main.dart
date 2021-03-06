// @dart=2.9
import 'package:chat_app/helper/authenticate.dart';
import 'package:chat_app/screens/login.dart';
import 'package:chat_app/screens/signUP.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        color: Colors.black,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey[900],
          primarySwatch: Colors.blue,
        ),
        home: Authenticate());
  }
}
