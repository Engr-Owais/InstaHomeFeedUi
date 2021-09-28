import 'package:flutter/material.dart';

class LikedBy extends StatelessWidget {
  const LikedBy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        "Liked by you, Owaistaha and 331 others",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
