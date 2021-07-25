import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

Widget progress (BuildContext context, double progressValue) {
  return LinearPercentIndicator(
    width: MediaQuery.of(context).size.width - 50,
    animation: true,
    lineHeight: 10.0,
    animationDuration: 500,
    percent: progressValue,
    linearStrokeCap: LinearStrokeCap.roundAll,
    progressColor: Color(0xffFFA3CC),
    backgroundColor: Color.fromRGBO(240, 240, 240, 1),
  );
}