
import 'package:firebase_logins/Pages/RegisterPage.dart';
import 'package:firebase_logins/Pages/ResetPassword.dart';
import 'package:firebase_logins/Settings/Entry_Exit_Register.dart';
import 'package:firebase_logins/Widget/ElevatedButtonPro.dart';
import 'package:firebase_logins/Widget/TextFieldPro.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final tfUserEmail = TextEditingController();
  final tfUserPassword = TextEditingController();
  Operation operation = Operation();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 70),
                child: Icon(Icons.lens_blur_rounded,
                    size: 150, color: Colors.deepPurple),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "WELCOME",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextFieldPro("E-MAİL", tfUserEmail),
                    TextFieldPro("PASSWORD", tfUserPassword),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 30, top: 15, bottom: 15),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ResetPassword()));
                            },
                            child: Text(
                              "FORGOT PASSWORD?",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[200]),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButtonPro("Sign Up", () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpPage()));
                        }),
                        ElevatedButtonPro("Login", () {
                          operation.SignIn(
                              tfUserEmail, tfUserPassword, context);
                        }),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Version : 0.0.1",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
