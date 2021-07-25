import 'package:flutter/material.dart';

Widget alertGender(BuildContext context, Function assign1, Function assign2) {
  return AlertDialog(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)),
    title: Text("Gender"),
    actions: [
      Container(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("Done"),

        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0)
        ),
        margin: EdgeInsets.symmetric(horizontal: 10.0),
      ),
    ],
    content: Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: assign1,
            child: Container(
              width: 40.0,
              height: 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Male",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: assign2,
            child: Container(
              width: 40.0,
              height: 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Female",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

