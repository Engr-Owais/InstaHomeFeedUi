import 'package:flutter/material.dart';

class AddComment extends StatelessWidget {
  const AddComment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Container(
            height: 40.0,
            width: 40.0,
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset('assets/insta.png'),
          ),
          new SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: new TextField(
              decoration: new InputDecoration(
                border: InputBorder.none,
                hintText: "Add a comment...",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
