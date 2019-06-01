import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';


class World extends StatefulWidget {
  @override
  _WorldState createState() => _WorldState();
}

class _WorldState extends State<World> {
  @override
  Widget build(BuildContext context) {
    return FlareActor("assets/earth.flr", animation: 'pulse');
  }
}

