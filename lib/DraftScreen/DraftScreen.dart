import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:self_order_kiosk_project/extras/constant/StringConstant.dart';

class DraftScreen extends StatefulWidget {
  @override
  _DraftScreenState createState() => _DraftScreenState();
}

class _DraftScreenState extends State<DraftScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      // Uncomment to change the background color
      // backgroundColor: CupertinoColors.systemPink,
      navigationBar: CupertinoNavigationBar(),
      child: ListView(
        children: <Widget>[Text(Test)],
      ),
    );
    ;
  }
}
