
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_logins/Pages/LoginPage.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.blueGrey,
            foregroundColor: Colors.white
        ),
        scaffoldBackgroundColor: Colors.grey[200],
      ),
      home: LoginPage(),
    );
  }
}
