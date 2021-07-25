import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  CardContainer({@required this.text,@required this.imgText});

  final String text;
  final String imgText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 5),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 8 - 8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Container(
              width: MediaQuery.of(context).size.width / 5,
              height: MediaQuery.of(context).size.height / 12,
              decoration: BoxDecoration(
                color: Color(0xffF9F9F9),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image(
                width: 50,
                height: 50,
                image: AssetImage(imgText),
              ),
            ),
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Color(0xff515151)),
          )
        ]),
      ),
    );
  }
}
