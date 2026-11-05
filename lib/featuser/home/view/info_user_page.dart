import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet/core/routes.dart';

class InfoUserPage extends StatefulWidget {
  const InfoUserPage({super.key});

  @override
  State<InfoUserPage> createState() => _InfoUserPageState();
}

class _InfoUserPageState extends State<InfoUserPage> {
  final ValueNotifier<bool> isUpdate = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
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

          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50.r),
                      bottomRight: Radius.circular(50.r),
                    ),
                  ),
                  // color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 40.h,
                          left: 90.w,
                          right: 90.w,
                        ),
                        child: SizedBox(
                          width: 200.w,
                          height: 200.h,
                          child: Image.asset("assets/logo_pet.png"),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Manage your personal information ",
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 16, 75, 19),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 70.h,
                  right: 25.w,
                  left: 25.w,
                  bottom: 35.h,
                ),
                child: SizedBox(
                  width: 500.w,
                  height: 400.h,
                  child: Card(
                    elevation: 0.1,
                    color: const Color.fromARGB(104, 255, 255, 255),
                    shadowColor: Colors.black.withValues(alpha: 0.2),
                    child: Column(
                      children: [
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    "First Name:",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                  ConstrainedBox(
                                    constraints: BoxConstraints(
                                      minWidth: 100.w,
                                    ),
                                    child: Card(
                                      clipBehavior: Clip.antiAlias,
                                      child: Padding(
                                        padding: EdgeInsets.all(10.h),
                                        child: Text("First Name"),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Expanded(child: SizedBox()),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    "Last Name:",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                  ConstrainedBox(
                                    constraints: BoxConstraints(
                                      minWidth: 100.w,
                                    ),
                                    child: Card(
                                      clipBehavior: Clip.antiAlias,
                                      child: Padding(
                                        padding: EdgeInsets.all(10.h),
                                        child: Text("Last Name"),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    "User Name:",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                  ConstrainedBox(
                                    constraints: BoxConstraints(
                                      minWidth: 100.w,
                                    ),
                                    child: Card(
                                      clipBehavior: Clip.antiAlias,
                                      child: Padding(
                                        padding: EdgeInsets.all(10.h),
                                        child: Text("First Name"),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Expanded(child: SizedBox()),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    "Phone:",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                  ConstrainedBox(
                                    constraints: BoxConstraints(
                                      minWidth: 100.w,
                                    ),
                                    child: Card(
                                      clipBehavior: Clip.antiAlias,
                                      child: Padding(
                                        padding: EdgeInsets.all(10.h),
                                        child: Text("Last Name"),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5.h),
                        Column(
                          children: [
                            Text(
                              "Email:",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15.sp,
                              ),
                            ),
                            ConstrainedBox(
                              constraints: BoxConstraints(minWidth: 200.w),
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                child: Padding(
                                  padding: EdgeInsets.all(10.h),
                                  child: Text(
                                    "user@gmal.com",
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(child: SizedBox()),
                        Padding(
                          padding: EdgeInsetsGeometry.symmetric(
                            horizontal: 10.w,
                            vertical: 10.h,
                          ),
                          child: ValueListenableBuilder(
                            valueListenable: isUpdate,
                            builder: (context, value, child) {
                              return ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(
                                    255,
                                    226,
                                    176,
                                    13,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                ),

                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    AppRoutes.updateuser,
                                  );
                                },

                                child: Center(
                                  child: Text(
                                    "Update",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsGeometry.symmetric(
                            horizontal: 10.w,
                            vertical: 10.h,
                          ),
                          child: ValueListenableBuilder(
                            valueListenable: isUpdate,
                            builder: (context, value, child) {
                              return ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(
                                    255,
                                    156,
                                    33,
                                    33,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                ),

                                onPressed: () {},

                                child: Center(
                                  child: Text(
                                    "Delete Account",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
