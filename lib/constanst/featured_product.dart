import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/constanst/app_strings.dart';
import 'package:portfolio/widgets/buttons/custom_button.dart';

class FeaturedProduct extends StatelessWidget {
  const FeaturedProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xFFf8fafc)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 100.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.featuredProducts,
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CustomButton(onPressed: (){}, buttonText: AppStrings.requestDemo, buttonWidth: 50.w, buttonColor: Color(0xFF0ea5e9), textColor: Colors.white),
              ],
            ),
          ),
          SizedBox(height: 50.h),
        ],
      ),
    );
  }
}
