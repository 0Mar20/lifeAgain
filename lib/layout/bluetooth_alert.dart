import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:life_again/modules/start_training/start_training.dart';

class AlerttDialog extends StatelessWidget {
  AlerttDialog({
    this.content,
    this.shape,
  });

  var shape;
  var content;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0),),),
      content: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 2,
        decoration: new BoxDecoration(
          shape: BoxShape.rectangle,
          color: const Color(0xFFFFFF),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: Image(
                image: AssetImage('assets/images/bluetooth.png'),
              ),
            ),
            Text(
              'Connect EEG Sensor with bluetooth',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FutureBuilder(
                      future: FlutterBluetoothSerial.instance.requestEnable(),
                      builder: (context, future) {
                        if (future.connectionState == ConnectionState.waiting) {
                          return Scaffold(
                            body: Container(
                              height: double.infinity,
                              child: Center(
                                child: Icon(
                                  Icons.bluetooth_disabled,
                                  size: 200.0,
                                  color: Colors.black12
                                  ,
                                ),
                              ),
                            ),
                          );
                        } else {
                          return StartTraining();
                        }
                      },
                    ),
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 18,
                decoration: BoxDecoration(
                    color: Color(0xff0D8EBC),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Center(
                  child: Text(
                    'go to Bluetooth',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
