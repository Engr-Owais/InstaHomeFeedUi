import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intatemplate/widget/AddComment.dart';
import 'package:intatemplate/widget/BottomBar.dart';
import 'package:intatemplate/widget/DayAgo.dart';
import 'package:intatemplate/widget/Stories.dart';
import 'widget/Icons.dart';
import 'widget/LikedBy.dart';
import 'widget/ProfilePic.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.black,
          buttonColor: Colors.black,
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme: TextTheme(
              bodyText1: TextStyle(color: Colors.black, fontFamily: "Aveny")),
          textTheme: TextTheme(bodyText1: TextStyle(color: Colors.black))),
      home: new InstaHome(),
    );
  }
}

class InstaHome extends StatefulWidget {
  @override
  _InstaHomeState createState() => _InstaHomeState();
}

class _InstaHomeState extends State<InstaHome> {
  bool isPressed = false;
  final topBar = new AppBar(
    backgroundColor: new Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading: new Icon(Icons.camera_alt),
    title: SizedBox(height: 35.0, child: Image.asset("assets/insta_logo.png")),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: topBar,
      bottomNavigationBar: BottomBar(),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => index == 0
            ? new SizedBox(
                child: Stories(),
                height: deviceSize.height * 0.13,
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
                    child: FirstRowOfPost(),
                  ),
                  ProfilePic(),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new IconButton(
                              icon: new Icon(isPressed
                                  ? Icons.favorite
                                  : FontAwesomeIcons.heart),
                              color: isPressed ? Colors.red : Colors.black,
                              onPressed: () {
                                setState(() {
                                  isPressed = !isPressed;
                                });
                              },
                            ),
                            new SizedBox(
                              width: 16.0,
                            ),
                            new Icon(
                              FontAwesomeIcons.comment,
                            ),
                            new SizedBox(
                              width: 16.0,
                            ),
                            new Icon(FontAwesomeIcons.paperPlane),
                          ],
                        ),
                        new Icon(FontAwesomeIcons.bookmark)
                      ],
                    ),
                  ),
                  LikedBy(),
                  AddComment(),
                  DayAgo()
                ],
              ),
      ),
    );
  }
}
