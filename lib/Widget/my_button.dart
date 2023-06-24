import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kartal/kartal.dart';

class MyButton extends StatelessWidget {
  Function()? onTap;
  MyButton(this.onTap, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: context.padding.paddingNormal,
        margin: context.padding.paddingNormal,
        decoration: BoxDecoration(
          color: Colors.green[600],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            "Sign In",
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
