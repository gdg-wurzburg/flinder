import 'package:flinder/widgets/time_slider.dart';
import 'package:flutter/material.dart';

class MapPage extends StatefulWidget {
  MapPage({Key key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flinder'),
      ),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: TimeSlider(),
      ),
    );
  }
}
