import 'package:flutter/material.dart';

class TextFormFieldPro extends StatelessWidget {
  final String text;

  final TextEditingController tfUser;

  TextFormFieldPro(this.text, this.tfUser);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 13,bottom: 13,left: 20,right: 20),
      child: TextFormField(
        controller: tfUser,
        decoration: InputDecoration(
          labelText: text,
          fillColor: Colors.grey[200],
          filled: true,
          labelStyle: TextStyle(
              color: Colors.grey[700],
              fontSize: 16,
              fontWeight: FontWeight.bold),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blueAccent,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
      ),
    );
  }
}
