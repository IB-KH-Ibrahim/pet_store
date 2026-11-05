import 'package:flutter/material.dart';
import 'package:pet/featuser/home/view/home_page.dart';
import 'package:pet/featuser/home/view/profile_page.dart';
import 'package:pet/featuser/home/view/store_page.dart';
import 'package:pet/featuser/home/widget/bottom_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List pages = [
    const HomePage(),
    const StorePage(),
    const ProfilePage(),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: BottomBar(
        selectedIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      body: pages[selectedIndex],
    );
  }
}
