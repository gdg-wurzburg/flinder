import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimeSlider extends StatefulWidget {
  TimeSlider({Key key}) : super(key: key);

  @override
  _TimeSliderState createState() => _TimeSliderState();
}

class _TimeSliderState extends State<TimeSlider> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(
          child: Center(
            child: Text('i$index'),
          ),
        );
      },
    );
  }
}
