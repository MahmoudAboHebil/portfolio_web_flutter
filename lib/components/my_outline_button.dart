import 'package:flutter/material.dart';

import '../constants.dart';

class MyOutlineButton extends StatelessWidget {
  MyOutlineButton({
    required this.imageSrc,
    required this.text,
    required this.press,
  });

  final String imageSrc, text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: OutlinedButton(
        style: ButtonStyle(
          padding: MaterialStatePropertyAll(
            EdgeInsets.symmetric(
              vertical: kDefaultPadding,
              horizontal: kDefaultPadding * 2.5,
            ),
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          side: MaterialStatePropertyAll(
            BorderSide(color: Color(0xFFEDEDED)),
          ),
        ),
        onPressed: () {
          press();
        },
        child: Row(
          children: [
            Image.asset(
              imageSrc,
              height: 40,
            ),
            SizedBox(width: kDefaultPadding),
            Text(text)
          ],
        ),
      ),
    );
  }
}
