import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio_web/constants.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
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
        child: Column(
          children: [
            Image.asset('assets/images/logo.png'),
            GlassContent(size: size)
          ],
        ),
      ),
    );
  }
}

class GlassContent extends StatelessWidget {
  const GlassContent({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          constraints: BoxConstraints(
            maxWidth: 1110,
            maxHeight: size.height * 0.7,
          ),
          color: Colors.white.withOpacity(0),
        ),
      ),
    );
  }
}