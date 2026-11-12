
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet/core/model/user_model/user_model.dart';
import 'package:pet/core/routes.dart';
import 'package:pet/featuser/profile/viwe_model/services/delete_user.dart';

class CoustomFormUserInformation extends StatelessWidget {
  const new({
    super.key,
    required this.user,
  });

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Card(
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
                          child: Text(
                            user.parametersUser.firstName,
                          ),
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
                          child: Text(
                            user.parametersUser.lastName,
                          ),
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
                          child: Text(
                            user.parametersUser.username,
                          ),
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
                          child: Text(
                            user.parametersUser.phone,
                          ),
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
                      user.parametersUser.email,
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
            child:ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(
                      255,
                      226,
                      176,
                      13,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10.r,
                      ),
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
                )
           
          ),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: 10.w,
              vertical: 10.h,
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(
                  255,
                  156,
                  33,
                  33,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10.r,
                  ),
                ),
              ),
                
              onPressed: () async {
                await DeleteUser.deleteUser();
              },
                
              child: Center(
                child: Text(
                  "Delete Account",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
