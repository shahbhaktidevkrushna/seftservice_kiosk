import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:selfservice_kiosk/extras/commonWidgets/CardAppointment.dart';
import 'package:selfservice_kiosk/extras/utils/SizeConfig.dart';

class TherapistScreen extends StatefulWidget {
  @override
  _TherapistScreenState createState() => _TherapistScreenState();
}

class _TherapistScreenState extends State<TherapistScreen> {
  Widget _portraitMode() {
    return MaterialApp(
      home: Scaffold(
        body: Column(children: [
          Card(
            child: GridView.count(
              crossAxisCount: 6,
              shrinkWrap: true,
              children: List.generate(
                9,
                (index) {
                  return cardAppointmentWidget();
                },
              ),
            ),
          ),
          Card(
            child: GridView.count(
              crossAxisCount: 6,
              shrinkWrap: true,
              children: List.generate(
                9,
                (index) {
                  return cardAppointmentWidget();
                },
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Widget _landscapeMode() {
    return MaterialApp(
      home: Scaffold(
        body: Column(children: [
          Container(
            margin: EdgeInsets.all(
              SizeConfig.screenHeight * 0.05,
            ),
            child: Card(
              child: GridView.count(
                crossAxisCount: 6,
                shrinkWrap: true,
                children: List.generate(
                  9,
                  (index) {
                    return cardAppointmentWidget();
                  },
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(
              SizeConfig.screenHeight * 0.05,
            ),
            child: Card(
              child: GridView.count(
                crossAxisCount: 6,
                shrinkWrap: true,
                children: List.generate(
                  9,
                  (index) {
                    return cardAppointmentWidget();
                  },
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return _portraitMode();
          } else {
            return _landscapeMode();
          }
        },
      ),
    );
  }
}
