import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialLogoImageButton extends StatelessWidget {

  final String imagePath;

  const SocialLogoImageButton({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Image.asset(imagePath,height: 30.h,width: 7.w,);
  }
}
