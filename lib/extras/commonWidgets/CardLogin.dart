import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:selfservice_kiosk/extras/commonWidgets/TextField.dart';
import 'package:selfservice_kiosk/extras/constant/AppColor.dart';
import 'package:selfservice_kiosk/extras/constant/AppImages.dart';
import 'package:selfservice_kiosk/extras/constant/StringConstant.dart';
import 'package:selfservice_kiosk/extras/utils/SizeConfig.dart';

import '../../extras/commonWidgets/Buttons.dart';

Widget cardLogin() {
  return Container(
    height: SizeConfig.screenHeight * 0.7,
    width: SizeConfig.screenHeight * 0.99,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: SvgPicture.asset(
              logoIcon,
              width: SizeConfig.screenWidth * 0.06,
              height: SizeConfig.screenHeight * 0.06,
            ),
          ),
          Container(
            child: Text(
              ipadLogin,
              style: TextStyle(
                color: colorPrimary,
                fontWeight: FontWeight.bold,
                fontSize: SizeConfig.screenWidth * 0.015,
              ),
            ),
          ),
          Container(
            child: customBtnRounded(
              colorPrimary,
              SizeConfig.screenHeight * 0.25,
              SizeConfig.screenHeight * 0.05,
              btnLogin,
              colorWhite,
              SizeConfig.screenHeight * 0.02,
            ),
          ),
        ],
      ),
    ),
  );
}
