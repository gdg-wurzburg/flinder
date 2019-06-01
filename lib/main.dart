import 'package:flinder/res/app_colors.dart';
import 'package:flinder/map_page.dart';
import 'package:flinder/routes.dart';
import 'package:flinder/world.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      routes: {
        Routes.login: (context) => LoginPage(),
        Routes.map: (context) => MapPage(),
      },
      title: 'flinder',
      theme: ThemeData(
        textTheme: TextTheme(button: TextStyle(color: AppColors.primaryColor)),
        primarySwatch: Colors.blue,
        canvasColor: AppColors.canvasColor,
      ),
    );
  }
}
