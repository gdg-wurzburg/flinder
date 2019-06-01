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
      physics: PageScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Text(
              '${list[index]} 2019',
              style: Theme.of(context).textTheme.title.copyWith(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  var list = <String>[
    'Januar',
    'Februar',
    'März',
    'April',
    'Mai',
    'Juni',
    'Juli',
    'August',
    'September',
    'Oktober',
    'November',
    'Dezember',
  ];
}
