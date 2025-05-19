import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget reviewWidget({required IconData iconName, required String reviewText}){
  return Container(
    height: 38.h,
    width:30.w,
    decoration: BoxDecoration(color: Color(0xFFf0f9ff),borderRadius: BorderRadius.circular(20)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconName,color: Color(0xFF0284c7),size: 6.sp,),
        Text(reviewText,style: TextStyle(color: Color(0xFF0284c7),fontSize: 5.sp),)
      ],
    ),
  );
}