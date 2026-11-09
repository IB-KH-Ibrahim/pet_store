import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet/core/widget/custom_form_text_widget.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    final focussearch = FocusNode();
    return Scaffold(
      body: Stack(
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
          SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsetsGeometry.directional(
                        start: 10.w,
                        top: 40.h,
                      ),
                      child: Icon(
                        Icons.pets,
                        color: const Color.fromARGB(255, 16, 75, 19),
                        size: 30.h,
                      ),
                    ),
                      
                    Padding(
                      padding: EdgeInsetsGeometry.directional(
                        start: 5.w,
                        top: 40.h,
                      ),
                      child: Text(
                        "PetStore",
                        style: TextStyle(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w800,
                          color: const Color.fromARGB(255, 16, 75, 19),
                        ),
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    Padding(
                      padding: EdgeInsetsGeometry.directional(top: 40.h),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.shopping_cart_outlined,
                          color: const Color.fromARGB(255, 16, 75, 19),
                          size: 30.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.directional(
                        // start: 50.w,
                        top: 40.h,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_none,
                          color: const Color.fromARGB(255, 16, 75, 19),
                          size: 30.h,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.w,
                    right: 10.w,
                    top: 10.h,
                    // bottom: 3.h,
                  ),
                  child: CustomFormTextWidget(
                    myfocus: focussearch,
                    controller: searchController,
                    typeinput: TextInputType.text,
                    hinttext: 'Search for a product',
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      color: const Color.fromARGB(255, 16, 75, 19),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsGeometry.only(
                    top: 10.h,
                    left: 5.w,
                    right: 5.w,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 120.h,
                      
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
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                      color: Colors.white,
                      elevation: 10,
                    ),
                  ),
                ),
                      
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Row(
                    children: [
                      Column(
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
                              shape: CircleBorder(),
                              clipBehavior: Clip.antiAlias,
                              color: Colors.white,
                              elevation: 5,
                            ),
                          ),
                          Text("data"),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.pets,
                            color: const Color.fromARGB(255, 40, 96, 42),
                          ),
                          Text(
                            "Popular Products",
                            style: TextStyle(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 40, 96, 42),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "See All",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 77, 150, 60),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: const Color.fromARGB(255, 77, 150, 60),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5.w,
                    vertical: 5.h,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 150.w,
                            height: 150.h,
                      
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
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              color: Colors.white,
                              elevation: 10,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
