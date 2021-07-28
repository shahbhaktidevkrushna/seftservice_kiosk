import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:self_order_kiosk_project/extras/utils/SizeConfig.dart';

Widget customBtnRounded(colorPrimaryBgShade, double width, double height,
    btnHistory, colorPrimaryText) {
  return TextButton(
    onPressed: () {},
    style: TextButton.styleFrom(
        backgroundColor: colorPrimaryBgShade,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        minimumSize: Size(
          width,
          height,
        )),
    child: Text(
      btnHistory,
      style: TextStyle(
        color: colorPrimaryText,
        fontSize: SizeConfig.screenWidth * 0.035,
      ),
    ),
  );
}

Widget customBtnSquare(
    btnColor, double width, double height, btnText, btnTextColor) {
  return TextButton(
    onPressed: () {},
    style: TextButton.styleFrom(
      backgroundColor: btnColor,
      minimumSize: Size(
        width,
        height,
      ),
    ),
    child: Text(
      btnText,
      style: TextStyle(
        color: btnTextColor,
        fontSize: SizeConfig.screenWidth * 0.025,
      ),
    ),
  );
}
