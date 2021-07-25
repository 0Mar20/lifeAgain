import 'package:flutter/material.dart';

Widget brainTrainingTitle (BuildContext context, String title) {
  return Row(
    children: [
      Flexible(
        child: InkWell(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: Container(
            margin: EdgeInsets.only(
                right: 15.0, top: 15.0, bottom: 15.0),
            width: 30.0,
            height: 30.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "assets/images/back.png"))),
          ),
        ),
      ),
      Text(
        title,
        style: TextStyle(
            color: Color(0xff141414),
            fontSize: 27.0,
            fontWeight: FontWeight.w600),
      ),
    ],
  );
}