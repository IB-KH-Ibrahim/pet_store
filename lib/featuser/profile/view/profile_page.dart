import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet/core/api/api_http.dart';
import 'package:pet/core/routes.dart';
import 'package:pet/core/view_model/get_user.dart';
import 'package:pet/featuser/profile/viwe_model/services/log_out.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: double.infinity),
              Padding(
                padding: EdgeInsets.only(top: 50.h, bottom: 10.h),
                child: Container(
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
                    shape: CircleBorder(),
                    clipBehavior: Clip.antiAlias,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    elevation: 5,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.person,
                        size: 90.h,
                        color: const Color.fromARGB(255, 16, 75, 19),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                "User Name",
                style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromARGB(255, 16, 75, 19),
                ),
              ),
              Container(
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
                  clipBehavior: Clip.antiAlias,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 3.h,
                      horizontal: 10.w,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.email,
                          size: 15.sp,
                          color: const Color.fromARGB(255, 16, 75, 19),
                        ),
                        Text(
                          "User Email",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: const Color.fromARGB(255, 16, 75, 19),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50.h),

              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 350.w,
                      height: 60.h,
                      child: Card(
                        elevation: 10,
                        color: const Color.fromARGB(0, 255, 255, 255),
                        shadowColor: const Color.fromARGB(68, 158, 158, 158),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, AppRoutes.infuser);
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.person,
                                size: 20.sp,
                                color: const Color.fromARGB(255, 16, 75, 19),
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                "Account Information",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  color: const Color.fromARGB(255, 16, 75, 19),
                                ),
                              ),
                              Expanded(child: SizedBox()),
                              Icon(
                                Icons.navigate_next,
                                size: 30.sp,
                                color: const Color.fromARGB(255, 16, 75, 19),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      width: 350.w,
                      height: 60.h,
                      child: Card(
                        elevation: 10,
                        color: const Color.fromARGB(0, 255, 255, 255),
                        shadowColor: const Color.fromARGB(76, 158, 158, 158),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                          ),
                          onPressed: () async {
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.language,
                                size: 20.sp,
                                color: const Color.fromARGB(255, 16, 75, 19),
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                "Language",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  color: const Color.fromARGB(255, 16, 75, 19),
                                ),
                              ),
                              Expanded(child: SizedBox()),
                              Icon(
                                Icons.navigate_next,
                                size: 30.sp,
                                color: const Color.fromARGB(255, 16, 75, 19),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),

                    SizedBox(
                      width: 350.w,
                      height: 60.h,
                      child: Card(
                        elevation: 10,
                        color: const Color.fromARGB(0, 255, 255, 255),
                        shadowColor: const Color.fromARGB(67, 158, 158, 158),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                          ),
                          onPressed: () async {
                            await LogOut.logOut();
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.logout,
                                size: 25.sp,
                                color: const Color.fromARGB(255, 144, 25, 25),
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                "Log out",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  color: const Color.fromARGB(255, 16, 75, 19),
                                ),
                              ),
                              Expanded(child: SizedBox()),
                              Icon(
                                Icons.navigate_next,
                                size: 30.sp,
                                color: const Color.fromARGB(255, 16, 75, 19),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
