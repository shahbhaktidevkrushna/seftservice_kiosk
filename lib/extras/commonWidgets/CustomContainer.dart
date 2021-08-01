import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:selfservice_kiosk/extras/constant/AppColor.dart';
import 'package:selfservice_kiosk/extras/constant/StringConstant.dart';

Widget therapistCont(
  double height,
  double width,
  contFontSize,
) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      color: colorLocationCont,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          therapistNumber,
          style: TextStyle(
            color: colorLocationIcon,
            fontSize: contFontSize,
          ),
        ),
      ],
    ),
  );
}
