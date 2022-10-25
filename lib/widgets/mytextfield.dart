import 'package:flutter/material.dart';

Widget customTextForm(controller, labeltext, prefix) {
  return TextFormField(
    controller: controller,
    decoration:
        InputDecoration(labelText: labeltext, border: const OutlineInputBorder(), prefixText: prefix),
  );
}

Widget flatTextForm(controller,label) {
  return TextFormField(
    keyboardType: TextInputType.number,
    controller: controller,
    decoration: InputDecoration(labelText: label),
  );
}
