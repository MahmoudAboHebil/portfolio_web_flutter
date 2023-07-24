import 'package:flutter/material.dart';

class PersonPic extends StatelessWidget {
  const PersonPic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Container(
        constraints: BoxConstraints(maxWidth: 639, maxHeight: 860),
        child: Image.asset("assets/images/person.png"),
      ),
    );
  }
}
