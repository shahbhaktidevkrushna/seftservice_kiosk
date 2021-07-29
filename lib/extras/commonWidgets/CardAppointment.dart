import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:selfservice_kiosk/extras/constant/AppColor.dart';
import 'package:selfservice_kiosk/extras/constant/StringConstant.dart';
import 'package:selfservice_kiosk/extras/utils/SizeConfig.dart';
import '../../extras/commonWidgets/Buttons.dart';

Widget cardAppointmentWidget(
  double margin,
  double containerHeight,
  double containerWidth,
  name,
  schedule,
  money,
  hours,
  nameColor,
  scheduleColor,
  moneyColor,
  hoursColor,
  btnFontSize,
) {
  return Container(
    margin: EdgeInsets.all(margin),
    height: containerHeight,
    width: containerWidth,
    child: Card(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                child: Text(
                  therapistNumber,
                  style: TextStyle(
                    color: nameColor,
                  ),
                ),
              ),
              Container(
                child: Text(
                  name,
                  style: TextStyle(
                    color: nameColor,
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: Text(
              schedule,
              style: TextStyle(
                color: scheduleColor,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                child: Text(
                  money,
                  style: TextStyle(
                    color: moneyColor,
                  ),
                ),
              ),
              Container(
                child: Text(
                  hours,
                  style: TextStyle(
                    color: hoursColor,
                  ),
                ),
              ),
            ],
          ),
          customBtnSquare(
            colorPrimary,
            SizeConfig.screenWidth * 0.1,
            SizeConfig.screenHeight * 0.02,
            btnBookMe,
            colorWhite,
            btnFontSize,
          ),
        ],
      ),
    ),
  );
}
