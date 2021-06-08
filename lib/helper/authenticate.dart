import 'package:chat_app/screens/login.dart';
import 'package:chat_app/screens/signUP.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  bool showSignIn = true;
  void toggleView() {
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  Widget build(BuildContext context) {
    if (showSignIn) {
      return Login(toggleView);
    } else {
      return SignUp(toggleView);
    }
  }
}
