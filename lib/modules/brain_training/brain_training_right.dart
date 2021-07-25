import 'package:flutter/material.dart';
import 'package:life_again/modules/brain_training/brain_training_left.dart';
import 'package:life_again/shared/components/brain_training/Button.dart';
import 'package:life_again/shared/components/brain_training/instruction.dart';
import 'package:life_again/shared/constants/brain_training_title.dart';
import 'package:life_again/shared/components/brain_training/directions.dart';
import 'package:life_again/shared/components/brain_training/progress.dart';

class BrainTrainingRight extends StatefulWidget {
  @override
  _BrainTrainingRightState createState() => _BrainTrainingRightState();
}

class _BrainTrainingRightState extends State<BrainTrainingRight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        brainTrainingTitle(context, "Brain Training"),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        progress(context, 0.75),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.09,
                        ),
                        singleArrow(context, "assets/images/forwardArrow.png"),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        middleRow(context, "assets/images/leftArrow.png",
                            "assets/images/rightArrowFilled.png"),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        singleArrow(context, "assets/images/downArrow.png"),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.07,
                        ),
                        instruction("Right"),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      sideButton("Back", () { Navigator.of(context).pop(); }, Alignment.bottomLeft ),
                      sideButton("Next", () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => BrainTrainingLeft()));
                      }, Alignment.bottomRight),
                    ],
                  ),
                ],
              )),
        ));
  }
}
