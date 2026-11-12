import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterProducts extends StatelessWidget {
  const FilterProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      color: const Color.fromARGB(236, 255, 255, 255),
      elevation: 0,
      position: PopupMenuPosition.under,
      iconColor:const Color.fromARGB(255, 16, 75, 19) ,
      iconSize: 35.sp,
      padding: EdgeInsets.all(0),
      icon: const Icon(
        Icons.filter_list,
      ),
      onSelected: (value) {},

      itemBuilder: (context) => [
        const PopupMenuItem(value: 'placed', child: Text('placed')),

        const PopupMenuItem(value: 'approved', child: Text('approved')),

        const PopupMenuItem(value: 'delivered', child: Text('delivered')),
      ],
    );
  }
}
