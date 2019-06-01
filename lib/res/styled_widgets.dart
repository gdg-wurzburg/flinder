import 'package:flutter/material.dart';

class InputText extends TextField {
  InputText({String labelText})
      : super(decoration: InputDecoration(labelText: labelText));

  InputText.multiLine({String labelText})
      : super(maxLines: 10, decoration: InputDecoration(labelText: labelText));
}
