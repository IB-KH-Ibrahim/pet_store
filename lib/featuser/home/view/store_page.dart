import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet/core/widget/custom_form_text_widget.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsGeometry.directional(
                    start: 5.w,
                    top: 50.h,
                    end: 5.w,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 50.w,
                        height: 50.h,
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
                          color: const Color.fromARGB(255, 255, 255, 255),
                          elevation: 5,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.navigate_before,
                              size: 30,
                              color: const Color.fromARGB(255, 16, 75, 19),
                            ),
                          ),
                        ),
                      ),

                      Text(
                        "Store",
                        style: TextStyle(
                          fontSize: 40.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 16, 75, 19),
                        ),
                      ),
                      Expanded(child: SizedBox()),
                         Container(
                        width: 50.w,
                        height: 50.h,

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
                          color: const Color.fromARGB(255, 255, 255, 255),
                          elevation: 5,
                          child:  IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.shopping_cart_outlined,
                          color: const Color.fromARGB(255, 16, 75, 19),
                          size: 30.h,
                        ),
                      ),
                        ),
                      ),
                    
                    ],
                  ),
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
                  padding: EdgeInsets.symmetric(
                    vertical: 10.h,
                    horizontal: 10.w,
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 80.w,
                            height: 75.h,

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
                              clipBehavior: Clip.antiAlias,
                              color: const Color.fromARGB(255, 255, 255, 255),
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
                  padding: EdgeInsetsGeometry.symmetric(
                    vertical: 10.h,
                    horizontal: 10.w,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 175.w,
                        height: 200.h,

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
                      Expanded(child: SizedBox()),
                      Container(
                        width: 175.w,
                        height: 200.h,

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
