import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/constanst/app_strings.dart';
import 'package:portfolio/widgets/buttons/custom_button.dart';
import 'package:portfolio/widgets/buttons/custom_section_textButton.dart';

class HeaderWeb extends StatelessWidget {
  const HeaderWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
