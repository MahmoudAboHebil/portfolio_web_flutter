import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:portfolio_web/constants.dart';
import 'components/logo_blur_box.dart';
import 'components/person_pic.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      height: size.height,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/images/background.png',
          ),
        ),
      ),
      child: Container(
        width: 1200,
        margin: EdgeInsets.only(top: kDefaultPadding),
        child: Stack(
          children: [
            LogoAndBlurBox(size: size),
            // PersonPic(),
            Positioned(
              bottom: 0,
              child: Menu(),
            ),
          ],
        ),
      ),
    );
  }
}

class Menu extends StatefulWidget {
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1110),
      height: 100,
      decoration: BoxDecoration(color: Colors.white),
    );
  }
}
