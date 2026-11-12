import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet/core/model/user_model/user_model.dart';
import 'package:pet/core/view_model/get_user.dart';
import 'package:pet/featuser/profile/viwe_model/widget/coustom_form_user_information.dart';

class InfoUserPage extends StatefulWidget {
  const InfoUserPage({super.key});

  @override
  State<InfoUserPage> createState() => _InfoUserPageState();
}

class _InfoUserPageState extends State<InfoUserPage> {
  late final Future<UserModel?> response;
  @override
  void initState() {
    super.initState();
    response = GetUser.getUser();
  }

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
                  //
                  child: FutureBuilder(
                    future: response,
                    builder: (context, asyncSnapshot) {
                      if (asyncSnapshot.connectionState ==
                          ConnectionState.waiting) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      if (asyncSnapshot.hasError) {
                        return const Center(
                          child: Text("Something went wrong"),
                        );
                      }

                      final user = asyncSnapshot.data;
                      if (user == null) {
                        return const Text("User not found");
                      }
                      return CoustomFormUserInformation(user: user);
                    },
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
