import 'package:flutter/material.dart';
import 'package:life_again/modules/brain_training/brain_training_back.dart';
import 'package:life_again/shared/components/brain_training/Button.dart';
import 'package:life_again/shared/components/brain_training/instruction.dart';
import 'package:life_again/shared/constants/brain_training_title.dart';
import 'package:life_again/shared/components/brain_training/directions.dart';
import 'package:life_again/shared/components/brain_training/progress.dart';

class BrainTrainingForward extends StatefulWidget {
  @override
  _BrainTrainingForwardState createState() => _BrainTrainingForwardState();
}

class _BrainTrainingForwardState extends State<BrainTrainingForward> {
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
                    progress(context, 0.25),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.09,
                    ),
                    singleArrow(
                        context, "assets/images/forwardArrowFilled.png"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    middleRow(context, "assets/images/leftArrow.png",
                        "assets/images/rightArrow.png"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    singleArrow(context, "assets/images/downArrow.png"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                    ),
                    instruction("Forward"),
                  ],
                ),
              ),
              sideButton("Next", () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => BrainTrainingBack()),
                );
              }, Alignment.bottomRight),
            ],
          )),
    ));
  }
}
