import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:selfservice_kiosk/extras/commonWidgets/CustomContainer.dart';
import 'package:selfservice_kiosk/extras/constant/AppColor.dart';
import 'package:selfservice_kiosk/extras/constant/AppImages.dart';
import 'package:selfservice_kiosk/extras/constant/StringConstant.dart';
import 'package:selfservice_kiosk/extras/utils/SizeConfig.dart';

import '../../extras/commonWidgets/Buttons.dart';

class MyPrefilledText extends StatefulWidget {
  const MyPrefilledText({Key? key}) : super(key: key);

  @override
  _MyPrefilledTextState createState() => _MyPrefilledTextState();
}

class _MyPrefilledTextState extends State<MyPrefilledText> {
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: Test);
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(controller: _textController);
  }
}
