import 'package:flutter/material.dart';
import 'package:life_again/layout/bluetooth_alert.dart';
import 'package:life_again/layout/start_containers.dart';
import 'package:life_again/modules/user/user_profile.dart';

class PatientOrEscort extends StatefulWidget {
  @override
  _PatientOrEscortState createState() => _PatientOrEscortState();
}

class _PatientOrEscortState extends State<PatientOrEscort> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Now you can back to life and practice daily life easily',
                style: TextStyle(
                  fontSize: 17.0,
                  color: Color(0xffA2A3A6),
                ),
              ),
              Column(
                children: [
                  InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlerttDialog(),
                        );
                      },
                      child: StartContainers(
                          imgText: 'assets/images/Flat.png', text: 'Patient')),
                  SizedBox(
                    height: 60,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserProfile()));
                    },
                    child: StartContainers(
                        imgText: 'assets/images/old-man.png', text: 'Escort'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
