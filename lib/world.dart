import 'package:flare_flutter/flare_controller.dart';
import 'package:flinder/world/anicontrol.dart';
import 'package:flinder/world/anim.dart';
import 'package:flinder/world/location_provider.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:provider/provider.dart';
import 'package:location/location.dart';

// ignore: must_be_immutable
class World extends StatefulWidget {
  AniControl earth = AniControl([
    Anim('dir', 0, 360, 20, true),
    Anim('lat', -90, 90, 1, false),
    Anim('lon', -180, 180, 1, true),
  ]);
  @override
  _WorldState createState() => _WorldState();
}

class _WorldState extends State<World> {
  int map = 0;
  AniControl controller;
  String animationName = 'idle';

  @override
  void initState() {
    controller = AniControl([
      Anim('dir', 0, 360, 20, true),
      Anim('lat', -90, 90, 1, false),
      Anim('lon', -180, 180, 1, true),
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var actor = FlareActor("assets/earth.flr",
        animation: animationName);
    return GestureDetector(child: actor, onTap: (){
      setState(() {
        animationName = 'lon';
      });
    },);
  }
}
