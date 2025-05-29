import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/constanst/app_strings.dart';
import 'package:portfolio/constanst/project_technologies.dart';

class AppCard extends StatelessWidget {
  final String appName;
  final String description;
  final String techImageUrl;
  const AppCard({
    super.key,
    required this.appName,
    required this.description,
    required this.techImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 8.0.w,
          crossAxisSpacing: 8.0.h,
        ),
        itemCount: projectsTechnologies.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Card(
            child: SizedBox(
              height: 390.h,
              width: 60.w,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: Image.asset(
                        projectsTechnologies[index]["projectImage"],
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(color: Color(0xFFffffff)),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 12.r,
                          bottom: 6.r,
                          left: 12.r,
                          right: 12.r,
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                projectsTechnologies[index]["projectName"],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 4.sp,
                                  color: (Color(0xFF111827)),
                                ),
                              ),
                            ),
                            SizedBox(height: 1.h),
                            Text(
                              projectsTechnologies[index]["description"],
                              style: TextStyle(
                                fontSize: 3.sp,
                                color: Color(0xFF4b5563),
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                            ),

                            SizedBox(height: 8.h),

                            Row(
                              children: [
                                for (
                                  int i = 0;
                                  i <
                                      projectsTechnologies[index]["technologies"]
                                          .length;
                                  i++
                                )
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 20.w,
                                      height: 6.w,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFf0f9ff),
                                        borderRadius: BorderRadius.circular(
                                          15.r,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 7.r,
                                          vertical: 4.r,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: 3.w,
                                              width: 3.w,
                                              child: Image.asset(
                                                "assets/images/technologies/flutter.png",
                                              ),
                                            ),
                                            SizedBox(width: 2.w),
                                            Text(
                                              "Flutter",
                                              style: TextStyle(
                                                color: Color(0xFF0370b6),
                                                fontSize: 3.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                            SizedBox(height: 10.h),

                            Align(
                              alignment: Alignment.bottomLeft,
                              child: SizedBox(
                                width: 30.w,
                                child: TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Text(
                                        AppStrings.viewDetails,
                                        style: TextStyle(
                                          fontSize: 3.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF0284c7),
                                        ),
                                      ),
                                      SizedBox(width: 1.w),
                                      Icon(
                                        Icons.arrow_forward,
                                        size: 4.sp,
                                        color: Color(0xFF0284c7),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
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
        },
      ),
    );
  }
}
