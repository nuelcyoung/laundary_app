import 'package:flutter/material.dart';

goButton(context, Widget location) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) {
      return location;
    }),
  );
}
