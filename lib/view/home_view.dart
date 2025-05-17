import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/constanst/app_strings.dart';
import 'package:portfolio/constanst/app_images.dart';
import 'package:portfolio/widgets/buttons/custom_button.dart';
import 'package:portfolio/widgets/buttons/custom_section_textButton.dart';
import 'package:portfolio/widgets/images/social_logo_image_button.dart';
import 'package:portfolio/widgets/text/custom_rich_text.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //--------------Top Bar: web
            Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
                child: SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            AppStrings.appBarDevTitle,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          customSectionTextButton(
                            buttonText: AppStrings.about,
                            onPressed: () {},
                          ),
                          customSectionTextButton(
                            buttonText: AppStrings.projects,
                            onPressed: () {},
                          ),
                          customSectionTextButton(
                            buttonText: AppStrings.skills,
                            onPressed: () {},
                          ),
                          customSectionTextButton(
                            buttonText: AppStrings.testimonials,
                            onPressed: () {},
                          ),
                          customSectionTextButton(
                            buttonText: AppStrings.contact,
                            onPressed: () {},
                          ),
                        ],
                      ),
                      CustomButton(
                        onPressed: () {},
                        buttonText: AppStrings.hireMe,
                        buttonWidth: 38.w,
                        buttonColor: Color(0xFF0ea5e9),
                        textColor: Colors.white,
                        buttonHeight: 40.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // ---cover details part: web
            Container(
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
                  padding: EdgeInsets.symmetric(
                    horizontal: 100.h,
                    vertical: 50.h,
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 40.h,
                          width: 80.w,
                          decoration: BoxDecoration(
                            color: Color(0xFFe0f2fe),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.h,
                              vertical: 7.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.phone_android,
                                  color: Colors.blue,
                                  size: 16,
                                ),
                                SizedBox(width: 5.h),
                                Text(
                                  AppStrings.designation,
                                  style: TextStyle(color: Color(0xFF0369a1)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.h),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
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
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  AppStrings.description,
                                  style: TextStyle(fontSize: 4.sp),
                                ),
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
                                    SocialLogoImageButton(
                                      imagePath: AppImages.github,
                                    ),
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
                          Expanded(flex: 1, child: SizedBox()),
                          Expanded(
                            flex: 1,
                            child: Card(
                              elevation: 10,
                              child: Container(
                                height: 450.h,
                                width: 150.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.center,
                                    colors: [Color(0xFFe0f2fe), Colors.white],
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(height: 10.h),
                                    CircleAvatar(
                                      child: Image.network(
                                        "https://imgs.search.brave.com/WJZSVWQyBEAcO0uXi7GiTB9odMU4ut6spQo2v6byBDY/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTQw/NzA4NDQxOS9waG90/by9wb3J0cmFpdC1v/Zi1oYXBweS1tYXR1/cmUtd29tZW4uanBn/P3M9NjEyeDYxMiZ3/PTAmaz0yMCZjPVRW/ak5iSHlyU1ZKN1hj/VFpONi1sSG1JdEhJ/RjB2VnpjSXZPWXlY/QVBwOGs9",
                                        height: 300,
                                        width: 300,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
