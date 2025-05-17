import 'package:flutter/material.dart';

Widget customSectionTextButton({
  required String buttonText,
  required VoidCallback onPressed,
}) {
  return TextButton(onPressed: onPressed, child: Text(buttonText,style: TextStyle(color: Colors.black),));
}