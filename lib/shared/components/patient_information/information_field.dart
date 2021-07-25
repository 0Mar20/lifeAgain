import 'package:flutter/material.dart';

Widget informationField (BuildContext context, String icon, String informationTitle, String informationValue, Function function, Widget slider) {
  return InkWell(
    onTap: function,
    child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.14,
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(width: 3.0, color: Color(0xffE8E8E8))
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 20.0, top: 10.0),
                        width: 50.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(230, 235, 240, 1),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Image.asset(icon),
                        ),
                      ),
                      Text(informationTitle, style: TextStyle(color: Color.fromRGBO(51, 47, 47, 1), fontSize: 22.0, fontWeight: FontWeight.w400),)
                    ],
                  ),
                  Text(informationValue, style: TextStyle(color: Color.fromRGBO(51, 47, 47, 1), fontSize: 20.0),)
                ],
              ),
            ),
            slider
          ],
        )),
  );
}