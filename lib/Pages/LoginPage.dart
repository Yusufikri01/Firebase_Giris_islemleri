import 'package:firebase_logins/Widget/my_button.dart';
import 'package:firebase_logins/Widget/my_container.dart';
import 'package:firebase_logins/Widget/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: context.padding.paddingMedium,
                child: Icon(
                  Icons.adb_outlined,
                  color: Colors.green[600],
                  size: 120,
                ),
              ),
              Text(
                "WELCOME BACK!",
                style: context.general.textTheme.headlineMedium,
              ),
              MyWidget(usernamecontroller, "Username", false),
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
              MyButton(() {}),
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
                          color: Colors.grey[700], fontWeight: FontWeight.bold),
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
                    Text("Not a member?  "),
                    Text(
                      "Register now",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
