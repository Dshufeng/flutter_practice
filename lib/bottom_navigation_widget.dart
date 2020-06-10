import 'package:flutter/material.dart';

import 'pages/email_screen.dart';
import 'pages/person_screen.dart';
import 'pages/home_screen.dart';
import 'pages/course_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  _BottomNavigationWidget createState() => _BottomNavigationWidget();
}

class _BottomNavigationWidget extends State<BottomNavigationWidget> {
  // final _bottomNavigationColor = Colors.blueAccent;

  int _currentIndex = 0;
  List<Widget> list = List();
  @override
  void initState() {
    list
      ..add(HomeScreen())
      ..add(EmailScreen())
      ..add(CourseScreen())
      ..add(PersonScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
            // canvasColor: Colors.green,
            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            primaryColor: Colors.red,
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: new TextStyle(color: Colors.black))),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text(
                  'home',
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.picture_in_picture,
                ),
                title: Text(
                  'pic',
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.golf_course,
                ),
                title: Text(
                  'course',
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                title: Text(
                  'person',
                )),
          ],
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
