import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_logins/Widget/my_button.dart';
import 'package:firebase_logins/Widget/my_container.dart';
import 'package:firebase_logins/Widget/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class Register extends StatefulWidget {
  final Function()? onTap;
  const Register(this.onTap,{Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  void SignUserIn() async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailcontroller.text, password: passwordcontroller.text);

      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      showErrorMessage(e.code);
    }
    emailcontroller.text = "";
    passwordcontroller.text = "";
  }

  void showErrorMessage(String error) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.amber,
            title: Text(
              error.toUpperCase(),
              style: TextStyle(fontSize: 16),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: context.padding.paddingMedium,
                  child: Icon(
                    Icons.lock,
                    color: Colors.black,
                    size: 120,
                  ),
                ),
                Text(
                  "WELCOME BACK!",
                  style: context.general.textTheme.headlineMedium,
                ),
                MyWidget(emailcontroller, "Email", false),
                MyWidget(passwordcontroller, "Password", true),
                Padding(
                  padding: context.padding.paddingNormal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                MyButton(() {
                  SignUserIn();
                }),
                Padding(
                  padding: context.padding.paddingNormal,
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                            thickness: 0.9,
                            color: Colors.grey[400],
                          )),
                      Text(
                        "Or Continue With",
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                          child: Divider(
                            thickness: 0.9,
                            color: Colors.grey[400],
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: context.padding.paddingNormal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyContainer("assets/google.png"),
                    ],
                  ),
                ),
                Padding(
                  padding: context.padding.paddingNormal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Not a member?  "),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: Text(
                          "Register now",
                          style: TextStyle(
                              color: Colors.blue[600],
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
