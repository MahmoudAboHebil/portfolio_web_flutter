import 'package:flutter/material.dart';
import 'package:portfolio_web/sections/aboutSection/about_section.dart';
import 'package:portfolio_web/sections/recent_work/recent_work_section.dart';
import 'package:portfolio_web/sections/service/service_section.dart';
import 'package:portfolio_web/sections/topSection/top_section.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            AboutSection(),
            ServiceSection(),
            RecentWorkSection(),
            SizedBox(
              height: 500,
            ),
            Container(
              height: 500,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
