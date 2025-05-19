import 'package:flutter/material.dart';

class DescriptionText extends StatelessWidget {

  final String text;
  final double fSize;

  const DescriptionText({super.key, required this.text, required this.fSize});

  @override
  Widget build(BuildContext context) {
    return Text(text,textAlign:TextAlign.justify,style: TextStyle(fontSize: fSize,),);
  }
}
