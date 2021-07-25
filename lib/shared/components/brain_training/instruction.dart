import 'package:flutter/material.dart';

Widget instruction (String command) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "Think you want to go ",
        style: TextStyle(
            color: Color.fromRGBO(56, 56, 54, 1),
            fontSize: 23.0,
            fontWeight: FontWeight.w500),
      ),
      Text(
        command,
        style: TextStyle(
          color: Color.fromRGBO(56, 56, 54, 1),
          fontSize: 25.0,
        ),
      ),
    ],
  );
}