import 'dart:async';
import 'package:flutter/material.dart';
import 'package:life_again/shared/components/brain_training/directions.dart';

class Movement extends StatefulWidget {
  @override
  _MovementState createState() => _MovementState();
}

class _MovementState extends State<Movement> {
  static const duration = const Duration(seconds: 1);

  int secondsPassed = 0;
  bool isActive = true;

  Timer timer;

  void handleTick() {
    if (isActive) {
      setState(() {
        secondsPassed = secondsPassed + 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (timer == null) {
      timer = Timer.periodic(duration, (Timer t) {
        handleTick();
      });
    }
    int seconds = secondsPassed % 60;

    return Scaffold(
        body: SafeArea(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              singleArrow(context, seconds >= 17 && seconds <= 18 || seconds >= 26 && seconds <= 26 || seconds >= 32 && seconds <= 33 || seconds >= 50 && seconds <= 50 ? "assets/images/forwardArrowFilled.png" : "assets/images/forwardArrow.png"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              middleRow(context, seconds >= 28 && seconds <= 29 || seconds >= 50 && seconds <= 50 ? "assets/images/leftArrowFilled.png" : "assets/images/leftArrow.png",
                  seconds >= 21 && seconds <= 22 || seconds >= 50 && seconds <= 51 || seconds >= 58 && seconds <= 59 ? "assets/images/rightArrowFilled.png" : "assets/images/rightArrow.png"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              singleArrow(context, seconds >= 11 && seconds <= 14 || seconds >= 50 && seconds <= 50 || seconds >= 54 && seconds <= 56 ? "assets/images/downArrowFilled.png" : "assets/images/downArrow.png"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              // mainButton(context, isActive ? 'STOP' : 'START', () {
              //   setState(() {
              //     isActive = !isActive;
              //   });
              // }),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.02,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     LabelText(
              //         label: 'SEC',
              //         value: seconds.toString().padLeft(2, '0')),
              //   ],
              // ),
            ],
          )),
    ));
  }
}

class LabelText extends StatelessWidget {
  LabelText({this.label, this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.teal,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            '$value',
            style: TextStyle(
                color: Colors.white, fontSize: 55, fontWeight: FontWeight.bold),
          ),
          Text(
            '$label',
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}
