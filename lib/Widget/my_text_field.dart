import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class MyWidget extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obsecureText;


  MyWidget(this.controller, this.hintText, this.obsecureText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.paddingNormal,
      child: TextField(
        controller: controller,
        obscureText: obsecureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[500]),
        ),
      ),
    );
  }
}
