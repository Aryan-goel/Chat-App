import 'package:chat_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60), child: appBarMain(context)),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            TextField(
              style: inputFieldtextStyle(),
              decoration: textFieldInputDecoration("Email"),
            ),
            TextField(
                style: inputFieldtextStyle(),
                decoration: textFieldInputDecoration("Password")),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: Text(
                  "Forgot password?",
                  style: inputFieldtextStyle(),
                ),
              ),
            ),
            SizedBox(height: 8),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.blue,
                    Colors.white,
                  ]),
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                "Sign In",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.blue,
                    Colors.white,
                  ]),
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                "Sign In with Google",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
