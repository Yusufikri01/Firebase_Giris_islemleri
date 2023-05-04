
import 'package:firebase_logins/Settings/Entry_Exit_Register.dart';
import 'package:firebase_logins/Widget/ElevatedButtonPro.dart';
import 'package:firebase_logins/Widget/TextFormFieldPro.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();
  final tfUserName = TextEditingController();
  final tfUserSurname = TextEditingController();
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
                padding: const EdgeInsets.all(25.0),
                child: Icon(Icons.save, size: 138, color: Colors.deepPurple),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Sign-Up",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey)),
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
                    Form(
                        key: formKey,
                        child: Column(
                          children: [
                            TextFormFieldPro("Firstname", tfUserName),
                            TextFormFieldPro("Surname", tfUserSurname),
                            TextFormFieldPro("E-mail", tfUserEmail),
                            TextFormFieldPro("Password", tfUserPassword),
                          ],
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButtonPro("BACK", () {
                          Navigator.pop(context);
                        }),
                        ElevatedButtonPro("SAVE", () {
                          operation.SignUp(tfUserName, tfUserSurname,
                              tfUserEmail, tfUserPassword, context);
                        }),
                      ],
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
