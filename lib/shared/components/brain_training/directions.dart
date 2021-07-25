import 'package:flutter/material.dart';

Widget singleArrow(BuildContext context, String arrow) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.15,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(arrow),
      ),
    ),
  );
}

Widget middleRow(BuildContext context, String left, String right) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: MediaQuery.of(context).size.width * 0.3,
        height: MediaQuery.of(context).size.height * 0.15,
        decoration:
            BoxDecoration(image: DecorationImage(image: AssetImage(left))),
      ),
      Container(
        width: MediaQuery.of(context).size.width * 0.25,
        height: MediaQuery.of(context).size.height * 0.15,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/brain.png"),
                fit: BoxFit.cover)),
      ),
      Container(
        width: MediaQuery.of(context).size.width * 0.3,
        height: MediaQuery.of(context).size.height * 0.15,
        decoration:
            BoxDecoration(image: DecorationImage(image: AssetImage(right))),
      ),
    ],
  );
}
