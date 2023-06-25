import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_logins/Pages/AuthPage.dart';
import 'package:firebase_logins/ui/theme.dart';
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
      theme: AppTheme.instance.theme,
      home: Auth(),
    );
  }
}
