import 'package:flutter/material.dart';
import 'package:portfolio_web/sections/aboutSection/about_section.dart';
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
