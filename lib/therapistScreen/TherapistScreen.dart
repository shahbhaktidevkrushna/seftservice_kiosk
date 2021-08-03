import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:selfservice_kiosk/extras/commonWidgets/CardAppointment.dart';
import 'package:selfservice_kiosk/extras/constant/AppColor.dart';
import 'package:selfservice_kiosk/extras/constant/StringConstant.dart';
import 'package:selfservice_kiosk/extras/utils/SizeConfig.dart';
import 'package:flutter/services.dart';

class TherapistScreen extends StatefulWidget {
  @override
  _TherapistScreenState createState() => _TherapistScreenState();
}

class _TherapistScreenState extends State<TherapistScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
    ]);

    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: SizeConfig.screenHeight * 0.50,
                child: Card(
                    margin: EdgeInsets.all(SizeConfig.screenHeight * 0.03),
                    elevation: 0.1,
                    color: Colors.white.withOpacity(0.85),
                    child: ListView(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.all(SizeConfig.screenWidth * 0.015),
                          child: Text(
                            availableLater,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: SizeConfig.screenWidth * 0.015,
                            ),
                          ),
                        ),
                        GridView.builder(
                          shrinkWrap: true,
                          itemCount: 21,
                          physics: ScrollPhysics(),
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 6,
                            mainAxisSpacing: SizeConfig.screenWidth * 0.01,
                            crossAxisSpacing: SizeConfig.screenWidth * 0.01,
                            childAspectRatio: SizeConfig.screenWidth /
                                (SizeConfig.screenWidth * 0.95),
                          ),
                          itemBuilder: (context, index) {
                            return cardAppointmentWidget(colorPrimary);
                          },
                        ),
                      ],
                    )),
              ),
              Container(
                height: SizeConfig.screenHeight * 0.50,
                child: Card(
                    margin: EdgeInsets.all(SizeConfig.screenHeight * 0.03),
                    elevation: 0.1,
                    color: Colors.white.withOpacity(0.85),
                    child: ListView(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.all(SizeConfig.screenWidth * 0.015),
                          child: Text(
                            availableLater,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: SizeConfig.screenWidth * 0.015,
                            ),
                          ),
                        ),
                        GridView.builder(
                          shrinkWrap: true,
                          itemCount: 21,
                          physics: ScrollPhysics(),
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 6,
                            mainAxisSpacing: SizeConfig.screenWidth * 0.01,
                            crossAxisSpacing: SizeConfig.screenWidth * 0.01,
                            childAspectRatio: SizeConfig.screenWidth /
                                (SizeConfig.screenWidth * 0.95),
                          ),
                          itemBuilder: (context, index) {
                            return cardAppointmentWidget(colorRed);
                          },
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
