import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio_web/constants.dart';

import 'components/glass_content.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(
        maxHeight: 900,
        minHeight: 700,
      ),
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
          ],
        ),
      ),
    );
  }
}

class LogoAndBlurBox extends StatelessWidget {
  const LogoAndBlurBox({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('assets/images/logo.png'),
        Spacer(),
        GlassContent(size: size),
        Spacer(
          flex: 3,
        ),
      ],
    );
  }
}
