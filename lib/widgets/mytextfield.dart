import 'package:flutter/material.dart';

Widget customTextForm(controller, labeltext, prefix) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
        labelText: labeltext,
        border: const OutlineInputBorder(),
        prefixText: prefix),
  );
}

Widget flatTextForm(controller, label, value) {
  return TextFormField(
    validator: (value) {
      if (value!.isEmpty || value.length < 3) {
        return "$value is Required";
      }
      return null;
    },
    keyboardType: TextInputType.number,
    controller: controller,
    decoration: InputDecoration(labelText: label),
  );
}
