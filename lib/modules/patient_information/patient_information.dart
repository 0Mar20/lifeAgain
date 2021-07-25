import 'package:flutter/material.dart';
import 'package:life_again/modules/patient/patient_home.dart';
import 'package:life_again/shared/components/brain_training/Button.dart';
import 'package:life_again/shared/components/patient_information/alertDialouge.dart';
import 'package:life_again/shared/components/patient_information/information_field.dart';
import 'package:life_again/shared/constants/brain_training_title.dart';

class PatientInformation extends StatefulWidget {
  @override
  _PatientInformationState createState() => _PatientInformationState();
}

class _PatientInformationState extends State<PatientInformation> {
  String gender = "Select";
  String gender1 = "Male";
  String gender2 = "Female";
  int age = 22;
  int weight = 80;

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
                    brainTrainingTitle(context, "Tell us about your patient"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.06,
                        child: Text(
                          "Your individual parameters are important for monitoring your patient health with you.",
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Color(0xffA2A3A6),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    informationField(
                      context,
                      "assets/images/user.png",
                      "Patient gender",
                      gender,
                      () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return alertGender(context, () {
                                setState(() {
                                  gender = gender1;
                                });
                              }, () {
                                setState(() {
                                  gender = gender2;
                                });
                              });
                            });
                      },
                      SizedBox(height: 0.0,),
                    ),
                    informationField(
                      context,
                      "assets/images/weighing-scale.png",
                      "Patient weight",
                      "${weight} kg",
                      () {},
                      Slider(
                        value: weight.toDouble(),
                        max: 250,
                        onChanged: (double value) {
                          setState(() {
                            weight = value.round();
                          });
                        },
                        activeColor: Color.fromRGBO(51, 47, 47, 1)
                      ),
                    ),
                    informationField(
                      context,
                      "assets/images/cake.png",
                      "Patient age",
                      "${age}",
                      () {},
                      Slider(
                        value: age.toDouble(),
                        max: 150,
                        onChanged: (double value) {
                          setState(() {
                            age = value.round();
                          });
                        },
                          activeColor: Color.fromRGBO(51, 47, 47, 1)
                      ),
                    ),
                    informationField(
                      context,
                      "assets/images/qr.png",
                      "Patient code",
                      "Enter",
                      () {},
                      SizedBox(height: 0.0,),
                    ),
                  ],
                ),
              ),
              mainButton(context, "Next", () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => PatientHome()));
              })
            ],
          ),
        ),
      ),
    );
  }
}
