import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListOrder extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> order = [
      {
        'Name': 'Dogs',
        'Price': '20\$',
        'Time': '00:05 PM 10_10_2020',
        'Image': 'assets/dog_pet.png',
      },
      {
        'Name': 'Cat',
        'Price': '30\$',
        'Time': '00:06 PM 10_10_2020',
        'Image': 'assets/cat_pet.png',
      },
      {
        'Name': 'Fish',
        'Price': '40\$',
        'Time': '00:07 PM 10_10_2020',
        'Image': 'assets/fish_pet.png',
      },
      {
        'Name': 'Rabbit',
        'Price': '50\$',
        'Time': '00:08 PM 10_10_2020',
        'Image': 'assets/rabbit_pet.png',
      },
      {
        'Name': 'Bird',
        'Price': '60\$',
        'Time': '00:09 PM 10_10_2020',
        'Image': 'assets/bird_pet.png',
      },
    ];

    return ListView.builder(
      itemCount: order.length,

      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.all(10.w),
          child: SizedBox(
            width: double.infinity,
            height: 130.h,
            child: Card(
              color: const Color.fromARGB(17, 255, 255, 255),
              shadowColor: const Color.fromARGB(69, 255, 255, 255),
              elevation: 2,
              child: Padding(
                padding: EdgeInsets.all(7.w),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(height: 10.h),
                        Flexible(
                          child: Text(
                            "Name: ${order[index]['Name']}",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w900,
                              color: const Color.fromARGB(255, 27, 81, 29),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Text(
                            "Price: ${order[index]['Price']}",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w900,
                              color: const Color.fromARGB(255, 27, 81, 29),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Text(
                            "Time: ${order[index]['Time']}",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w900,
                              color: const Color.fromARGB(255, 27, 81, 29),
                            ),
                          ),
                        ),

                        Flexible(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(
                                255,
                                181,
                                32,
                                32,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ),

                            onPressed: () {},

                            child: Center(
                              child: Text(
                                "Delet",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w900,
                                  color: const Color.fromARGB(
                                    255,
                                    253,
                                    255,
                                    254,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(child: SizedBox()),
                    SizedBox(
                      width: 90.w,
                      height: 90.h,
                      child: Card(
                        color: const Color.fromARGB(17, 255, 255, 255),
                        shadowColor: const Color.fromARGB(119, 255, 255, 255),
                        elevation: 2,
                        child: Image.asset(order[index]['Image']!),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
