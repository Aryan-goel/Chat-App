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
              decoration: InputDecoration(
                  hintText: "Email", hintStyle: TextStyle(color: Colors.white)),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
