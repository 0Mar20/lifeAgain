import 'package:flutter/material.dart';

class StartContainers extends StatelessWidget {
  StartContainers({@required this.text, @required this.imgText});

  final String text;
  final String imgText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width /1.5,
      height: MediaQuery.of(context).size.height /5,
      decoration: BoxDecoration(
        color: Color(0xffE3EAE5),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(fit:FlexFit.loose,child: Image(image: AssetImage(imgText),)),
            Text(
              text,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
