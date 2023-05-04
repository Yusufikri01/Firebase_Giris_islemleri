import 'package:firebase_logins/Settings/Entry_Exit_Register.dart';
import 'package:firebase_logins/Widget/ElevatedButtonPro.dart';
import 'package:firebase_logins/Widget/TextFieldPro.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final tfResetPasswordEmail = TextEditingController();
  Operation operation = Operation();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 120),
              child: Icon(Icons.lock_reset_rounded,
                  size: 160, color: Colors.deepPurple),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 50,right: 15,left: 15),
              child: Text(
                "ENTER YOUR E-MAIL TO RESET PASSWORD",
                style: TextStyle(
                    fontSize: 27,
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextFieldPro("E-mail", tfResetPasswordEmail),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButtonPro("BACK", () {
                        Navigator.pop(context);
                      }),
                      ElevatedButtonPro("SEND", () {
                        operation.ResetPassword(tfResetPasswordEmail, context);
                      }),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
