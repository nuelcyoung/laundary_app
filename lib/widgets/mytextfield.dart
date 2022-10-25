import 'package:flutter/material.dart';

Widget customTextForm(controller, labeltext, prefix) {
  return TextFormField(
    controller: controller,
    validator: (value) {
      if (value!.isEmpty || value=="") {
        return " Required";
      }
      return null;
    },
    decoration: InputDecoration(
        labelText: labeltext,
        border: const OutlineInputBorder(),
        prefixText: prefix),
  );
}

Widget flatTextForm(controller, label) {
  return TextFormField(
    validator: (value) {
      if (value!.isEmpty || value=="") {
        return " Required";
      }
      return null;
    },
    keyboardType: TextInputType.number,
    controller: controller,
    decoration: InputDecoration(labelText: label),
  );
}
