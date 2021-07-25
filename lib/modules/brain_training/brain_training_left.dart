import 'package:flutter/material.dart';
import 'package:life_again/modules/patient_information/patient_information.dart';
import 'package:life_again/shared/components/brain_training/Button.dart';
import 'package:life_again/shared/components/brain_training/instruction.dart';
import 'package:life_again/shared/constants/brain_training_title.dart';
import 'package:life_again/shared/components/brain_training/directions.dart';
import 'package:life_again/shared/components/brain_training/progress.dart';

class BrainTrainingLeft extends StatefulWidget {
  @override
  _BrainTrainingLeftState createState() => _BrainTrainingLeftState();
}

class _BrainTrainingLeftState extends State<BrainTrainingLeft> {
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
                        progress(context, 1.0),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.09,
                        ),
                        singleArrow(context, "assets/images/forwardArrow.png"),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        middleRow(context, "assets/images/leftArrowFilled.png",
                            "assets/images/rightArrow.png"),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        singleArrow(context, "assets/images/downArrow.png"),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.07,
                        ),
                        instruction("Left"),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      sideButton("Back", () { Navigator.of(context).pop(); }, Alignment.bottomLeft),
                      sideButton("Finish", (){
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PatientInformation()));
                      }, Alignment.bottomRight),
                    ],
                  ),
                ],
              )),
        ));
  }
}
