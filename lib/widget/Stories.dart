import 'package:flutter/material.dart';

class Stories extends StatefulWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  _StoriesState createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: new Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: new ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 40,
          itemBuilder: (context, index) => new Stack(
            alignment: Alignment.bottomRight,
            children: <Widget>[
              new Container(
                width: 80.0,
                height: 80.0,
                child: Image.asset(
                  "assets/insta.png",
                ),
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.purple, width: 1),
                    color: Colors.white.withOpacity(0.6)),
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
              ),
              index == 0
                  ? Positioned(
                      right: 10.0,
                      child: new CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        radius: 10.0,
                        child: new Icon(
                          Icons.add,
                          size: 14.0,
                          color: Colors.white,
                        ),
                      ))
                  : new Container()
            ],
          ),
        ),
      ),
    );
  }
}
