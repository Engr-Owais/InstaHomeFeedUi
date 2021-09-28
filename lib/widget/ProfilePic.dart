import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: new Image.asset(
        "assets/insta_logo.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
