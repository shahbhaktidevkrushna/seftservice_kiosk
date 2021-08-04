import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget customBtnRounded(
  buttonColor,
  width,
  height,
  buttonText,
  textColor,
  btnFontSize,
) {
  return TextButton(
    onPressed: () {},
    style: TextButton.styleFrom(
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        minimumSize: Size(
          width,
          height,
        )),
    child: Text(
      buttonText,
      style: TextStyle(
        color: textColor,
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
