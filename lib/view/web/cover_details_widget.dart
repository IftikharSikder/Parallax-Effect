import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/constanst/app_images.dart';
import 'package:portfolio/constanst/app_strings.dart';
import 'package:portfolio/widgets/buttons/custom_button.dart';
import 'package:portfolio/widgets/cards/profile_card.dart';
import 'package:portfolio/widgets/images/social_logo_image_button.dart';
import 'package:portfolio/widgets/text/custom_rich_text.dart';
import 'package:portfolio/widgets/text/description_text.dart';

class CoverDetailsWidget extends StatelessWidget {
  const CoverDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().screenWidth,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFFFFFFFF), Color(0xFFe1f3ff)],
        ),
      ),
      child: SizedBox(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 100.h, vertical: 50.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 40.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                    color: Color(0xFFe0f2fe),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 7.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.phone_android, color: Colors.blue, size: 16),
                        SizedBox(width: 5.h),
                        Text(
                          AppStrings.designation,
                          style: TextStyle(
                            color: Color(0xFF0369a1),
                            fontSize: 4.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: ScreenUtil().screenWidth * .3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              customRichText(
                                text: "Hi, I'M ",
                                textColor: Colors.black,
                              ),
                              customRichText(
                                text: "Iftikhar",
                                textColor: Color(0xFF0485c7),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              customRichText(
                                text: "Ahammad",
                                textColor: Color(0xFF0485c7),
                              ),
                              customRichText(
                                text: ".",
                                textColor: Colors.black,
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              customRichText(
                                text: "Your Next ",
                                textColor: Colors.black,
                              ),
                              customRichText(
                                text: "Flutter",
                                textColor: Color(0xFF0485c7),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Expert",
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        DescriptionText(text: AppStrings.description, fSize: 4.sp),
                        SizedBox(height: 20.h),
                        Row(
                          children: [
                            CustomButton(
                              onPressed: () {},
                              buttonText: AppStrings.viewPortfolio,
                              buttonWidth: 42.w,
                              buttonColor: Color(0xFF0284c7),
                              textColor: Colors.white,
                              buttonHeight: 45.h,
                            ),
                            SizedBox(width: 5.w),
                            CustomButton(
                              onPressed: () {},
                              buttonText: AppStrings.contactMe,
                              buttonWidth: 36.w,
                              buttonColor: Colors.white,
                              textColor: Color(0xFF0369a1),
                              buttonHeight: 45.h,
                              isBorder: true,
                            ),
                          ],
                        ),
                        SizedBox(height: 50.h),
                        Row(
                          children: [
                            SocialLogoImageButton(imagePath: AppImages.github),
                            SizedBox(width: 4.w),
                            SocialLogoImageButton(
                              imagePath: AppImages.linkedIn,
                            ),
                            SizedBox(width: 4.w),
                            SocialLogoImageButton(
                              imagePath: AppImages.facebook,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(),
                  ProfileCard(),
                  SizedBox(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
