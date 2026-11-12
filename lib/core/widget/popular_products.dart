import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewProducts extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> products = [
      {'name': 'Pet carrier bag', 'price': '\$35', 'image': 'assets/pet_carrier_bag.png'},
      {'name': 'Dog chest harness', 'price': '\$18', 'image': 'assets/dog_chest_harness.png'},
    ];
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        // mainAxisSpacing: 12,
        // crossAxisSpacing: 12,
        childAspectRatio: 0.9,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
          color: const Color.fromARGB(17, 255, 255, 255),
          shadowColor: const Color.fromARGB(69, 255, 255, 255),
          elevation: 2,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                    height: 120.h,
                    child: Image.asset(products[index]['image']!),
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  products[index]['name']!,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  products[index]['price']!,
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w900,
                    color: const Color.fromARGB(255, 27, 81, 29),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
