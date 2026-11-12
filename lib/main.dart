import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet/core/routes.dart';
import 'package:pet/featuser/auth/view/log_in_view.dart';
import 'package:pet/featuser/auth/view/reset_password_view.dart';
import 'package:pet/featuser/auth/view/sign_up_view.dart';
import 'package:pet/featuser/home/view/home_page.dart';
import 'package:pet/featuser/profile/view/info_user_page.dart';
import 'package:pet/featuser/home/view/main_page.dart';
import 'package:pet/featuser/profile/view/profile_page.dart';
import 'package:pet/featuser/profile/view/update_info.dart';
import 'package:pet/featuser/splash/view/splash_view.dart';
import 'package:pet/featuser/store/view/order_page.dart';
import 'package:pet/featuser/store/view/store_page.dart';

final GlobalKey<ScaffoldMessengerState> publiccontex = GlobalKey();
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.green,
            colorScheme: ColorScheme.fromSwatch().copyWith(
              secondary: Colors.greenAccent,
              primary: Colors.green,
            ),
            fontFamily: 'Nunito',
            scaffoldBackgroundColor: const Color.fromARGB(255, 245, 244, 239),
          ),

          scaffoldMessengerKey: publiccontex,
          navigatorKey: navigatorKey,
          debugShowCheckedModeBanner: false,
          home: const SplashView(),
          routes: {
            AppRoutes.login: (context) => const LogInScreen(),
            AppRoutes.signup: (context) => const SignUpPage(),
            AppRoutes.resetPassword: (context) => const ResetPassword(),
            AppRoutes.home: (context) => const HomePage(),
            AppRoutes.store: (context) => const StorePage(),
            AppRoutes.profile: (context) => const ProfilePage(),
            AppRoutes.main: (context) => const MainPage(),
            AppRoutes.infuser: (context) => const InfoUserPage(),
            AppRoutes.updateuser: (context) => const UpdateInfo(),
            AppRoutes.splash: (context) => const SplashView(),
            AppRoutes.order: (context) => const OrderPage(),
          },
        );
      },
    ),
  );
}


