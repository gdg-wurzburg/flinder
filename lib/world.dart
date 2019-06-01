import 'package:flinder/world/anicontrol.dart';
import 'package:flinder/world/anim.dart';
import 'package:flinder/world/location_provider.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:provider/provider.dart';

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
  @override
  Widget build(BuildContext context) {
    for (int i = 0;i<360;i++){
      widget.earth['lon'].value = i.toDouble();
    }
    return FlareActor("assets/earth.flr",
        animation: 'pulse', color: Colors.blue, controller: widget.earth);
  }
}
