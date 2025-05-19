import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/constanst/app_images.dart';
import 'package:portfolio/constanst/app_strings.dart';
import 'package:portfolio/widgets/review_widget/review_widget.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        height: 380.h,
        width: 75.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment(0.0, 0.7),
            stops: [0.0, 1.0],
            colors: [Color(0xFFe0f2fe), Colors.white],
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            CircleAvatar(
              radius: 64.r,
              backgroundColor: Color(0xff7dd3fc),
              child: ClipOval(
                child: SizedBox(
                  width: 120.r,
                  height: 120.r,
                  child: Image.asset(
                    AppImages.profilePicture,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),

            SizedBox(height: 20.h,),
            Text(AppStrings.myName,style: TextStyle(fontSize: 6.sp,fontWeight: FontWeight.bold),),
            SizedBox(height: 4.h,),
            Text(AppStrings.cardDesignation,style: TextStyle(color: Color(0xFF6b7280),fontSize: 4.sp),),
            SizedBox(height: 30.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                reviewWidget(iconName: Icons.workspace_premium, reviewText: AppStrings.experienceYr),
                SizedBox(width: 2.w,),
                reviewWidget(iconName: Icons.star, reviewText: AppStrings.ratings)
              ],
            ),
            SizedBox(height: 10.h,),
            Card(
              elevation: 2,
              color: Colors.white,
              child: SizedBox(width: 45.w,height: 50.h,child: Center(child: Text(AppStrings.openToWOrk,style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF0369a1),fontSize: 5.sp),)),),
            )
          ],
        ),
      ),
    );
  }
}
