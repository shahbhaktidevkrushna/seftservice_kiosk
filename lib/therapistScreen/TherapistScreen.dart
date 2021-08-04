import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:selfservice_kiosk/extras/commonWidgets/CardAppointment.dart';
import 'package:selfservice_kiosk/extras/constant/AppColor.dart';
import 'package:selfservice_kiosk/extras/constant/AppImages.dart';
import 'package:selfservice_kiosk/extras/constant/StringConstant.dart';
import 'package:selfservice_kiosk/extras/utils/SizeConfig.dart';

class TherapistScreen extends StatefulWidget {
  @override
  _TherapistScreenState createState() => _TherapistScreenState();
}

class _TherapistScreenState extends State<TherapistScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(bodyBackground),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: SizeConfig.screenHeight * 0.01),
                    child: Text(
                      appbarTitle,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: SizeConfig.screenWidth * 0.02,
                      ),
                    ),
                  ),
                  Container(
                    height: SizeConfig.screenHeight * 0.53,
                    child: Card(
                        margin: EdgeInsets.symmetric(
                            horizontal: SizeConfig.screenHeight * 0.03),
                        elevation: 0.1,
                        color: Colors.white.withOpacity(0.85),
                        child: ListView(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(
                                  SizeConfig.screenWidth * 0.015),
                              child: Text(
                                availableNow,
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: SizeConfig.screenWidth * 0.015),
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
                  SizedBox(height: SizeConfig.screenHeight * 0.02),
                  Container(
                    height: SizeConfig.screenHeight * 0.53,
                    child: Card(
                        margin: EdgeInsets.symmetric(
                            horizontal: SizeConfig.screenHeight * 0.03),
                        elevation: 0.1,
                        color: Colors.white.withOpacity(0.85),
                        child: ListView(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(
                                  SizeConfig.screenWidth * 0.015),
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: SizeConfig.screenWidth * 0.015),
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
        ),
      ),
    );
  }
}
