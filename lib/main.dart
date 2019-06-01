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
      routes: {
        Routes.login: (context) => LoginPage(),
        Routes.map: (context) => World(),
      },
      title: 'flinder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
