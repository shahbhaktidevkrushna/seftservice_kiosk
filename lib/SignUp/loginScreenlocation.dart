import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:selfservice_kiosk/extras/commonWidgets/CardAppointment.dart';
import 'package:selfservice_kiosk/extras/commonWidgets/CardLogin.dart';
import 'package:selfservice_kiosk/extras/constant/AppColor.dart';
import 'package:selfservice_kiosk/extras/constant/AppImages.dart';
import 'package:selfservice_kiosk/extras/constant/StringConstant.dart';
import 'package:selfservice_kiosk/extras/utils/SizeConfig.dart';

class LoginScreenLocation extends StatefulWidget {
  @override
  _LoginScreenLocationState createState() => _LoginScreenLocationState();
}

class _LoginScreenLocationState extends State<LoginScreenLocation> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(menuBackground),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Center(
              child: cardLoginLocation(),
            ),
          ),
        ),
      ),
    );
  }
}
