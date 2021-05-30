import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.blue[900],
    title: Image.asset(
      "assets/images/logo.png",
      height: 70,
    ),
  );
}

InputDecoration textFieldInputDecoration(String hint) {
  return InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(color: Colors.white),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      enabledBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)));
}

TextStyle inputFieldtextStyle() {
  return TextStyle(color: Colors.white, fontSize: 16);
}
