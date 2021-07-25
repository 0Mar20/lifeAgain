import 'package:flutter/material.dart';
import 'package:life_again/Movement.dart';
import 'package:life_again/layout/bottomnavbar.dart';
import 'package:life_again/layout/patient_home_containers.dart';

class PatientHome extends StatefulWidget {
  @override
  _PatientHomeState createState() => _PatientHomeState();
}

class _PatientHomeState extends State<PatientHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE3EAE5),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Patient',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                            border: Border.all(
                                width: 0.5, color: const Color(0xFF0D8EBC))),
                        child: Image(
                          image: AssetImage('assets/images/roberto.png'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Movement()));
                },
                child: CardContainer(
                    imgText: 'assets/images/download.png', text: 'Need Food'),
              ),
              InkWell(
                onTap: () {},
                child: CardContainer(
                    imgText:
                    'assets/images/PikPng.com_glass-of-water-png_418080.png',
                    text: 'Need Water'),
              ),
              InkWell(
                onTap: () {},
                child: CardContainer(
                    imgText: 'assets/images/toilet.png', text: 'Bathroom'),
              ),
              InkWell(
                onTap: () {},
                child: CardContainer(
                    imgText: 'assets/images/PngItem_349739.png',
                    text: 'Chat With Escort'),
              ),
              InkWell(
                onTap: () {},
                child: CardContainer(
                    imgText: 'assets/images/pencil.png', text: 'Notes'),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
