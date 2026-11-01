import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet/featuser/authntcaion/presentation/log_in_screen.dart';

final GlobalKey<ScaffoldMessengerState> masscontex = GlobalKey();
void main() {
  runApp(
   ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          scaffoldMessengerKey: masscontex,
          debugShowCheckedModeBanner: false,
          home: const LogInScreen(),
        );
      },
    ),
  );
}
