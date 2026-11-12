import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SideBar extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> pet = [
      {'name': 'Dogs', 'image': 'assets/dog_pet.png'},
      {'name': 'Cats', 'image': 'assets/cat_pet.png'},
      {'name': 'Birds', 'image': 'assets/bird_pet.png'},
      {'name': 'Fish', 'image': 'assets/fish_pet.png'},
      {'name': 'Rabbit', 'image': 'assets/rabbit_pet.png'},
    ];
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: pet.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              InkWell(
                onTap: () {
                  print("hi");
                },
                child: Column(
                  children: [
                    Container(
                      width: 80.w,
                      height: 80.h,

                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 50,
                            color: const Color.fromARGB(
                              199,
                              158,
                              158,
                              158,
                            ).withValues(alpha: 0.1),
                          ),
                        ],
                      ),
                      child: Card(
                        color: const Color.fromARGB(0, 255, 255, 255),
                        shadowColor: const Color.fromARGB(67, 255, 255, 255),
                        child: Image.asset(
                          pet[index]['image']!,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(pet[index]['name']!),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
