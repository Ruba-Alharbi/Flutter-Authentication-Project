import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'view/auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'InDeep',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home:  ScreenUtilInit(
             builder: (_) =>  Auth() ),
    );
  }
}
