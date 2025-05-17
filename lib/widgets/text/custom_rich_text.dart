import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextSpan customRichText({required String text, required Color textColor}) {
  return TextSpan(
    text: text,
    style: TextStyle(
      color: textColor,
      fontWeight: FontWeight.bold,
      fontSize: 12.sp,
    ),
  );
}
