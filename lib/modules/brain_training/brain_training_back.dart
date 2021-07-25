import 'package:flutter/material.dart';
import 'package:life_again/modules/brain_training/brain_training_right.dart';
import 'package:life_again/shared/components/brain_training/Button.dart';
import 'package:life_again/shared/components/brain_training/directions.dart';
import 'package:life_again/shared/components/brain_training/instruction.dart';
import 'package:life_again/shared/components/brain_training/progress.dart';
import 'package:life_again/shared/constants/brain_training_title.dart';

class BrainTrainingBack extends StatefulWidget {
  @override
  _BrainTrainingBackState createState() => _BrainTrainingBackState();
}

class _BrainTrainingBackState extends State<BrainTrainingBack> {
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
                        progress(context, 0.5),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.09,
                        ),
                        singleArrow(context, "assets/images/forwardArrow.png"),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        middleRow(context, "assets/images/leftArrow.png",
                            "assets/images/rightArrow.png"),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        singleArrow(context, "assets/images/downArrowFilled.png"),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.07,
                        ),
                        instruction("Back"),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      sideButton("Back", () { Navigator.of(context).pop(); }, Alignment.bottomLeft),
                      sideButton("Next", () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => BrainTrainingRight()));
                      }, Alignment.bottomRight),
                    ],
                  ),
                ],
              )),
        ));
  }
}
