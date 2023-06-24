import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class MyContainer extends StatelessWidget {
  final String imagePath;
  MyContainer(this.imagePath, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.padding.paddingNormal,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.grey[200]?.withOpacity(0.99),
      ),
      child: Image.asset(imagePath,height: 60,),
    );
  }
}
