import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:selfservice_kiosk/extras/commonWidgets/CustomContainer.dart';
import 'package:selfservice_kiosk/extras/constant/AppColor.dart';
import 'package:selfservice_kiosk/extras/constant/AppImages.dart';
import 'package:selfservice_kiosk/extras/constant/StringConstant.dart';
import 'package:selfservice_kiosk/extras/utils/SizeConfig.dart';
import '../../extras/commonWidgets/Buttons.dart';
import 'package:flutter_svg/svg.dart';

Widget cardAppointmentWidget() {
  return Container(
    margin: EdgeInsets.all(
      SizeConfig.screenWidth * 0.05,
    ),
    height: SizeConfig.screenWidth * 0.2,
    width: SizeConfig.screenWidth * 0.25,
    child: Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              therapistCont(
                  SizeConfig.screenHeight * 0.02,
                  SizeConfig.screenWidth * 0.045,
                  SizeConfig.screenWidth * 0.014),
              Container(
                margin: EdgeInsets.only(
                  left: SizeConfig.screenHeight * 0.010,
                ),
                child: Text(
                  nameTest,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: SizeConfig.screenWidth * 0.019,
                    color: colorBlack,
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
                  scheduleTest,
                  style: TextStyle(
                    color: colorPrimary,
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
                  left: SizeConfig.screenHeight * 0.05,
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
            SizeConfig.screenWidth * 0.20,
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
