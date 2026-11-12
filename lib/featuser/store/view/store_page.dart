import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet/core/routes.dart';
import 'package:pet/core/widget/custom_form_text_widget.dart';
import 'package:pet/core/widget/popular_products.dart';
import 'package:pet/featuser/store/view_model/widget/filter_products.dart';

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
                      SizedBox(
                        width: 45.w,
                        height: 45.h,
                        child: Card(
                          shape: CircleBorder(),
                          clipBehavior: Clip.antiAlias,
                          color: const Color.fromARGB(171, 255, 255, 255),
                          shadowColor: const Color.fromARGB(0, 255, 255, 255),
                          elevation: 5,
                          child: IconButton(
                            onPressed: () {
                              // Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.navigate_before,
                              size: 25,
                              color: const Color.fromARGB(255, 16, 75, 19),
                            ),
                          ),
                        ),
                      ),

                      Text(
                        "Store",
                        style: TextStyle(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w800,
                          color: const Color.fromARGB(255, 16, 75, 19),
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      SizedBox(
                        width: 45.w,
                        height: 45.h,

                        child: Card(
                          shape: CircleBorder(),
                          clipBehavior: Clip.antiAlias,
                          color: const Color.fromARGB(217, 255, 255, 255),
                          shadowColor: const Color.fromARGB(0, 255, 255, 255),
                          elevation: 5,
                          child: IconButton(
                            onPressed: () {Navigator.pushNamed(context, AppRoutes.order);},
                            icon: Icon(
                              Icons.shopping_cart_outlined,
                              color: const Color.fromARGB(255, 16, 75, 19),
                              size: 25.h,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                    Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 5.w,vertical: 3.h),
                          child: SizedBox(
                            height: 60.h,
                            child: CustomFormTextWidget(
                              myfocus: focussearch,
                              controller: searchController,
                              typeinput: TextInputType.text,
                              hinttext: 'Search for a product ',
                              prefixIcon: Icon(
                                Icons.search_rounded,
                                color: const Color.fromARGB(255, 16, 75, 19),
                              ),
                            ),
                          ),
                        ),
                ViewProducts()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
