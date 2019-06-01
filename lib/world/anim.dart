import 'package:flare_dart/animation/actor_animation.dart';

class Anim {
  String name;
  double _value = 0, pos = 0, min, max, speed;
  bool endless = false;
  ActorAnimation actor;
  Anim(this.name, this.min, this.max, this.speed, this.endless);
  get value => _value * (max - min) + min;
  set value(double v) => _value = (v - min) / (max - min);
}