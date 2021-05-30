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
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 10,
          alignment: Alignment.center,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                SizedBox(height: 10),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.blue,
                        Colors.blue,
                      ]),
                      borderRadius: BorderRadius.circular(25)),
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 18),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.white,
                        Colors.white,
                      ]),
                      borderRadius: BorderRadius.circular(25)),
                  child: Text(
                    "Sign In with Google",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?  ",
                      style: inputFieldtextStyle(),
                    ),
                    Text(
                      "Register now !",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          decoration: TextDecoration.underline),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
