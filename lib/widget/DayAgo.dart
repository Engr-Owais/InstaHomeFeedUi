import 'package:flutter/material.dart';

class DayAgo extends StatelessWidget {
  const DayAgo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text("1 Day Ago", style: TextStyle(color: Colors.grey)),
    );
  }
}
