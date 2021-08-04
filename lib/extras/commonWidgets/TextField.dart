import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:selfservice_kiosk/extras/commonWidgets/CustomContainer.dart';
import 'package:selfservice_kiosk/extras/constant/AppColor.dart';
import 'package:selfservice_kiosk/extras/constant/AppImages.dart';
import 'package:selfservice_kiosk/extras/constant/StringConstant.dart';
import 'package:selfservice_kiosk/extras/utils/SizeConfig.dart';

import '../../extras/commonWidgets/Buttons.dart';

Widget customTextField(txtInput, hidden) {
  return TextField(
    enableSuggestions: false,
    autocorrect: false,
    obscureText: hidden,
    minLines: 1,
    maxLines: 1,
    decoration: InputDecoration(
      labelText: txtInput,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 1,
          color: colorBorderGrey,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 1,
          color: colorPrimary,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    ),
  );
}
