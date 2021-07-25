import 'package:flutter/material.dart';

class GridContainers extends StatelessWidget {
  GridContainers({
    @required this.text,
    @required this.imgText,
    @required this.color,
  });

  final String text;
  final String imgText;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      height: MediaQuery.of(context).size.height / 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10, // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: MediaQuery.of(context).size.width / 5,
              height: MediaQuery.of(context).size.height / 12,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Image(
                image: AssetImage(imgText),
              ),
            ),
          ),
          Flexible(fit: FlexFit.tight,
            flex: 2,
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black45),
              softWrap: true,
              overflow: TextOverflow.fade,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
