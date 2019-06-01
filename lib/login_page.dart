import 'package:flinder/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, Routes.map);
          },
          child: Text('Open Map'),
        ),
      ),
    );
  }
}
