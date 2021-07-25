import 'package:flutter/material.dart';
import 'package:life_again/modules/brain_training/brain_training_forward.dart';

class StartTraining extends StatefulWidget {
  @override
  _StartTrainingState createState() => _StartTrainingState();
}

class _StartTrainingState extends State<StartTraining> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: InkWell(
                onTap: (){
                  Navigator.of(context).pop();
                },
                child: Container(
                  margin: EdgeInsets.only(
                      right: 15.0, top: 15.0, bottom: 15.0),
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/images/back.png"))),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(children: <TextSpan>[
                              TextSpan(
                                  text:
                                  "After connect EEG sensor with Bluetooth device now you should test it By doing a  ",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20)),
                              TextSpan(
                                  text: "brain training",
                                  style: TextStyle(
                                      color: Color(0xff0D8EBC),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20)),
                            ]),
                          )
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                      fit: FlexFit.loose,
                      child: Image.asset('assets/images/start.png')),
                  InkWell(
                    onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => BrainTrainingForward()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff0D8EBC),
                          borderRadius: BorderRadius.circular(10.0)),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 15,
                      child: Center(
                        child: Text(
                          'Start training',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
