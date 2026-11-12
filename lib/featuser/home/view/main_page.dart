import 'package:flutter/material.dart';
import 'package:pet/featuser/home/view/home_page.dart';
import 'package:pet/featuser/products/view/products_page.dart';
import 'package:pet/featuser/profile/view/profile_page.dart';
import 'package:pet/featuser/home/widget/bottom_bar.dart';
import 'package:pet/featuser/store/view/store_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List pages = [
    const HomePage(),
    const StorePage(),
    const ProductsPage(),
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
