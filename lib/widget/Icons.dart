import 'package:flutter/material.dart';

class FirstRowOfPost extends StatelessWidget {
  const FirstRowOfPost({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            new Container(
              height: 40.0,
              width: 40.0,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset("assets/insta.png"),
            ),
            new SizedBox(
              width: 10.0,
            ),
            new Text(
              "Owais Taha",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        new IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: null,
        )
      ],
    );
  }
}
