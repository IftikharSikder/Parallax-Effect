import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/constanst/app_card.dart';
import 'package:portfolio/constanst/app_strings.dart';
import 'package:portfolio/constanst/dev_speciality_text.dart';
import 'package:portfolio/constanst/featured_product.dart';
import 'package:portfolio/view/web/about_me_widget.dart';
import 'package:portfolio/view/web/cover_details_widget.dart';
import 'package:portfolio/view/web/header.dart';
import 'package:portfolio/widgets/buttons/custom_button.dart';
import 'package:portfolio/widgets/text/description_text.dart';

import '../constanst/project_technologies.dart' show projectsTechnologies;

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //----------Top Bar part: web
            HeaderWeb(),
            // ---cover details part: web
            Card(elevation: 0, child: CoverDetailsWidget()),
            //---------About Me part: web
            AboutMeWidget(),
            //------Featured Product: web
            FeaturedProduct(),
            //------All Projects
            AppCard(
              appName: "appName",
              description:
                  "An EMI management app helps users track, manage, and pay their monthly loan installments easily and on time, providing reminders, payment history, and budgeting tools to avoid missed deadlines and maintain financial discipline.",
              techImageUrl: "techImageUrl",
            ),
            SizedBox(height: 40.h),
          ],
        ),
      ),
    );
  }
}
