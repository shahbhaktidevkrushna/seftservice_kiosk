import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:selfservice_kiosk/therapistScreen/TherapistScreen.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
  ]);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TherapistScreen(),
    );
  }
}
