import 'package:flutter/material.dart';

Widget sideButton (String title, Function function, Alignment alignment) {
  return Align(
      alignment: alignment,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(15.0),
          onTap: function,
          child: Container(
            width: 120.0,
            height: 50.0,
            decoration: BoxDecoration(
                color: Color(0xff0D8EBC),
                borderRadius: BorderRadius.circular(15.0)),
            child: Center(
              child: Text(
                title,
                style:
                TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ),
        ),
      ));
}

Widget mainButton (BuildContext context, String title, Function function) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: InkWell(
        onTap: function,
        borderRadius: BorderRadius.circular(15.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50.0,
          decoration: BoxDecoration(
            color: Color(0xff0D8EBC),
            borderRadius: BorderRadius.circular(15.0),),
          child: Center(
            child: Text(
              title,
              style:
              TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
        ),
      ),
    ),
  );
}