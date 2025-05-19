import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/constanst/app_strings.dart';
import 'package:portfolio/constanst/dev_speciality_text.dart';
import 'package:portfolio/view/web/cover_details_widget.dart';
import 'package:portfolio/view/web/header.dart';
import 'package:portfolio/widgets/buttons/custom_button.dart';
import 'package:portfolio/widgets/text/description_text.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //--------------Top Bar: web
            HeaderWeb(),
            // ---cover details part: web
            Card(elevation: 0, child: CoverDetailsWidget()),
            Container(
              decoration: BoxDecoration(color: Color(0xFFf8fafc)),
              child: Row(
                children: [
                  Expanded(flex: 1, child: Container()),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.only(right: 20.w),
                      child: Column(
                        children: [
                          SizedBox(height: 55.h),
                          Text(
                            AppStrings.aboutMe,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 30.h),
                          DescriptionText(
                            text: AppStrings.aboutMeDescription,
                            fSize: 4.sp,
                          ),
                          SizedBox(height: 25.h),
                          for (
                            int i = 0; i < DevelopmentSpeciality.text.length; i++
                          )
                            Align(
                              alignment: Alignment.topLeft,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("✓  ",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF0ea5e9)),),
                                      Text(DevelopmentSpeciality.text[i],style: TextStyle(color: Color(0xFF000000),),),
                                    ],
                                  ),
                                  SizedBox(height: 12.h,)
                                ],
                              ),
                            ),
                          SizedBox(height: 30.h),
                          Row(
                            children: [
                              CustomButton(onPressed: (){}, buttonText: AppStrings.mySkills, buttonWidth: 40.w, buttonColor: Color(0xFF0ea5e9), textColor: Colors.white),
                              SizedBox(width: 30.h),
                              CustomButton(onPressed: (){}, buttonText: AppStrings.letsConnect, buttonWidth: 40.w, buttonColor: Color(0xFFf0f9ff), textColor: Color(0xFF0369a1),isBorder: true,)
                            ],
                          ),
                          SizedBox(height: 30.h),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
