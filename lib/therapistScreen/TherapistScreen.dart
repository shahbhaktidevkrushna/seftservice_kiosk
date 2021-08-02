import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:selfservice_kiosk/extras/commonWidgets/CardAppointment.dart';
import 'package:selfservice_kiosk/extras/constant/AppColor.dart';
import 'package:selfservice_kiosk/extras/constant/StringConstant.dart';
import 'package:selfservice_kiosk/extras/utils/SizeConfig.dart';

class TherapistScreen extends StatefulWidget {
  @override
  _TherapistScreenState createState() => _TherapistScreenState();
}

class _TherapistScreenState extends State<TherapistScreen> {
  Widget _portraitMode() {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Card(
              child: Row(
                children: [
                  cardAppointmentWidget(),
                  cardAppointmentWidget(),
                  cardAppointmentWidget(),
                ],
              ),
            ),
            Card(
              child: Row(
                children: [
                  cardAppointmentWidget(),
                  cardAppointmentWidget(),
                  cardAppointmentWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _landscapeMode() {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Card(
              child: Row(
                children: [
                  cardAppointmentWidget(),
                  cardAppointmentWidget(),
                  cardAppointmentWidget(),
                ],
              ),
            ),
            Card(
              child: Row(
                children: [
                  cardAppointmentWidget(),
                  cardAppointmentWidget(),
                  cardAppointmentWidget(),
                ],
              ),
            ),
          ],
        ),
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
