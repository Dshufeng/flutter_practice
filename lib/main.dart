import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'package:flutter/rendering.dart';

import 'bottom_navigation_widget.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
  if (Platform.isAndroid) {
    SystemUiOverlayStyle style = SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,

        ///这是设置状态栏的图标和字体的颜色
        ///Brightness.light  一般都是显示为白色
        ///Brightness.dark 一般都是显示为黑色
        statusBarIconBrightness: Brightness.light);
    SystemChrome.setSystemUIOverlayStyle(style);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
//      theme: ThemeData.dark(),
      theme: new ThemeData(
        // brightness: Brightness.dark,
        primaryColor: Colors.red,
      ),
      home: BottomNavigationWidget(),
    );
  }
}
