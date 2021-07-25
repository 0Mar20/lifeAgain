import 'package:flutter/material.dart';
import 'gridview_containers.dart';
import 'bottomnavbar.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFFF2),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Color(0xffFFD454),
                  iconSize: 30,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image(
                    image: AssetImage('assets/images/roberto1.png'),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.more_vert),
                  color: Color(0xffFFD454),
                  iconSize: 30,
                  onPressed: () {},
                )
              ],
            ),
          ),
          Text(
            'Mariam Abd El-Aty',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 4,
            height: 2,
            color: Color(0xffFFD454),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 40,
                  mainAxisSpacing: 40,
                  crossAxisCount: 2,
                  children: [
                    GridContainers(
                      imgText: 'assets/images/wheelchair.png',
                      text: 'Chair Movements',
                    ),
                    GridContainers(
                      imgText: 'assets/images/brain.png',
                      text: 'Chair Movements',
                    ),
                    GridContainers(
                      imgText: 'assets/images/wheelchair.png',
                      text: 'Chair Movements',
                    ),
                    GridContainers(
                      imgText: 'assets/images/wheelchair.png',
                      text: 'Chair Movements',
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
