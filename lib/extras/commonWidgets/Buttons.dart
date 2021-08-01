import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget customBtnRounded(
  colorPrimaryBgShade,
  double width,
  double height,
  btnHistory,
  colorPrimaryText,
  btnFontSize,
) {
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
        fontSize: btnFontSize,
      ),
    ),
  );
}

Widget customBtnSquare(
  btnColor,
  double width,
  double height,
  btnText,
  btnTextColor,
  btnFontSize,
) {
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
        fontSize: btnFontSize,
      ),
    ),
  );
}
