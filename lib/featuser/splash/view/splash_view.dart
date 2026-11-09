import 'package:flutter/material.dart';
import 'package:pet/featuser/splash/view_model/check_page.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    CheckPage.nextPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Stack(
      children: [
                  SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset('assets/bg_pet.png', fit: BoxFit.cover),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,

            color: const Color.fromARGB(
              255,
              255,
              255,
              255,
            ).withValues(alpha: 0.5),
          ),
        Center(child: Image.asset("assets/logo_pet.png")),
      ],
    ),);
  }
}
