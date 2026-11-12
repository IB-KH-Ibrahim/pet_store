import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomBar extends StatelessWidget {
  final ValueChanged<int> onTap;
  final int selectedIndex;
  const BottomBar({super.key, required this.selectedIndex,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 5.w,horizontal: 30.w),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50.r),
        
        child: NavigationBar(
          
          selectedIndex: selectedIndex,
        
          indicatorColor: Colors.green,
          backgroundColor: const Color.fromARGB(126, 255, 255, 255),
          onDestinationSelected:onTap,
          
          
        
          destinations: const [
            NavigationDestination(
              
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: 'Home',
            ),
        
            NavigationDestination(
              icon: Icon(Icons.storefront_outlined),
              selectedIcon: Icon(Icons.storefront),
              label: 'Store',
            ),
            NavigationDestination(
              icon: Icon(Icons.pets_outlined),
              selectedIcon: Icon(Icons.pets),
              label: 'Products',
            ),
        
            NavigationDestination(
              icon: Icon(Icons.person_outline),
              selectedIcon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
