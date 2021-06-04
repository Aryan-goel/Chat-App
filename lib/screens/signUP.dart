import 'package:chat_app/screens/chatRoom.dart';
import 'package:chat_app/services/auth.dart';
import 'package:chat_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  AuthMethods authMethods = new AuthMethods();
  bool isLoading = false;
  final formKey = GlobalKey<FormState>();
  TextEditingController userNameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  signMeUp() {
    if (formKey.currentState!.validate()) {
      setState(() {
        isLoading = true;
      });
      authMethods
          .signupwithEmailAndPassword(
              emailController.text, passwordController.text)
          .then((val) {
        print("$val");

        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => ChatRoom()));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60), child: appBarMain(context)),
      body: isLoading
          ? Container(
              child: Center(child: CircularProgressIndicator()),
            )
          : SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height - 10,
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      //*username field
                      Form(
                        key: formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              validator: (val) {
                                return val!.isEmpty || val.length < 4
                                    ? "please provide a Username"
                                    : null;
                              },
                              controller: userNameController,
                              style: inputFieldtextStyle(),
                              decoration: textFieldInputDecoration("Name"),
                            ),

                            //* email field
                            TextFormField(
                              validator: (val) {
                                return RegExp(
                                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                        .hasMatch(val!)
                                    ? null
                                    : "Enter correct email";
                              },
                              controller: emailController,
                              style: inputFieldtextStyle(),
                              decoration: textFieldInputDecoration("Email"),
                            ),

                            //*password field
                            TextFormField(
                                validator: (val) {
                                  return val!.length > 6
                                      ? null
                                      : "please provide a password with 6+ characters";
                                },
                                obscureText: true,
                                controller: passwordController,
                                style: inputFieldtextStyle(),
                                decoration:
                                    textFieldInputDecoration("Password"))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                          child: Text(
                            "Forgot password?",
                            style: inputFieldtextStyle(),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          signMeUp();
                        },
                        child: Container(
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
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
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
                            "Already have an account?  ",
                            style: inputFieldtextStyle(),
                          ),
                          Text(
                            "Login !",
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
