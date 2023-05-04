import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_logins/Settings/Entry_Exit_Register.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  User? user;
  HomePage(this.user, {Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? firstname;
  Operation operation = Operation();
  @override
  void initState() {
    super.initState();
    setState(() {
      getData();
    });

  }

  Future<void> getData() async {
    firstname = await operation.DisplayData(widget.user!.email!);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("HELLO, $firstname "),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "THIS PROJECT IS DESIGNED FOR LOGIN WITH FIREBASE. TESTED ON 2 EMULATORS . IT IS WORKING PROPERLY. IT WILL BE UPDATED ACCORDING TO FLUTTER VERSIONS.",
                  style: TextStyle(fontSize: 20, color: Colors.amber),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
