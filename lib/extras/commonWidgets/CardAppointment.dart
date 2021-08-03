import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:selfservice_kiosk/extras/commonWidgets/CustomContainer.dart';
import 'package:selfservice_kiosk/extras/constant/AppColor.dart';
import 'package:selfservice_kiosk/extras/constant/AppImages.dart';
import 'package:selfservice_kiosk/extras/constant/StringConstant.dart';
import 'package:selfservice_kiosk/extras/utils/SizeConfig.dart';
import '../../extras/commonWidgets/Buttons.dart';
import 'package:flutter_svg/svg.dart';

Widget cardAppointmentWidget(colorAvailable) {
  return Container(
    height: SizeConfig.screenWidth * 0.2,
    width: SizeConfig.screenWidth * 0.5,
    child: Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              therapistCont(
                  SizeConfig.screenHeight * 0.025,
                  SizeConfig.screenWidth * 0.030,
                  SizeConfig.screenWidth * 0.011),
              Container(
                margin: EdgeInsets.only(
                  left: SizeConfig.screenHeight * 0.010,
                ),
                child: Text(
                  nameTest,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: SizeConfig.screenWidth * 0.015,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: SizeConfig.screenHeight * 0.012,
                ),
                child: SvgPicture.asset(
                  calendarIcon,
                  color: colorAvailable,
                  width: SizeConfig.screenWidth * 0.015,
                  height: SizeConfig.screenHeight * 0.015,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: SizeConfig.screenHeight * 0.005,
                ),
                child: Text(
                  scheduleTest,
                  style: TextStyle(
                    color: colorAvailable,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: SizeConfig.screenHeight * 0.012,
                ),
                child: SvgPicture.asset(
                  moneyIcon,
                  color: colorPrimary,
                  width: SizeConfig.screenWidth * 0.015,
                  height: SizeConfig.screenHeight * 0.015,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: SizeConfig.screenHeight * 0.0049,
                ),
                child: Text(
                  moneyTest,
                  style: TextStyle(
                    color: colorPrimary,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: SizeConfig.screenHeight * 0.060,
                ),
                child: SvgPicture.asset(
                  clockIcon,
                  color: colorPrimary,
                  width: SizeConfig.screenWidth * 0.015,
                  height: SizeConfig.screenHeight * 0.015,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: SizeConfig.screenHeight * 0.005,
                ),
                child: Text(
                  hoursTest,
                  style: TextStyle(
                    color: colorBorderGrey,
                  ),
                ),
              ),
            ],
          ),
          customBtnSquare(
            colorPrimary,
            SizeConfig.screenWidth * 0.13,
            SizeConfig.screenHeight * 0.03,
            btnBookMe,
            colorWhite,
            SizeConfig.screenWidth * 0.015,
          ),
        ],
      ),
    ),
  );
}
