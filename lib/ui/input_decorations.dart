import 'package:flutter/material.dart';

class InputDecorations {
  static InputDecoration authInputdecoration(
      {required String hintText,
      required String labelText,
      IconData? prefixIcon}) {
    return InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2)),
        hintText: hintText,
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.grey),
        prefixIcon:
            prefixIcon != null ? Icon(prefixIcon, color: Colors.black) : null);
  }
}
