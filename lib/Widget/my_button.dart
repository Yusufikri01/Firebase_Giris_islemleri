import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kartal/kartal.dart';

class MyButton extends StatelessWidget {
  Function()? onTap;
  String text;
  MyButton(this.onTap,this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: context.padding.paddingNormal,
        margin: context.padding.paddingNormal,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontFamily: GoogleFonts.aldrich().fontFamily,
                fontSize: 16),
          ),
        ),
      ),
    );
  }
}
