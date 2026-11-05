import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet/core/routes.dart';
import 'package:pet/core/widget/custom_form_text_widget.dart';
import 'package:pet/core/widget/showmessage.dart';
import 'package:pet/featuser/auth/view_model/validation_request/validation_login.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final usserNameController = TextEditingController();
  final passwordController = TextEditingController();
  final focusUserName = FocusNode();
  final focusPassword = FocusNode();
  final ValueNotifier<bool> isLoading = ValueNotifier<bool>(false);
  final ValueNotifier<bool> showPass = ValueNotifier<bool>(true);
  @override
  void dispose() {
    showPass.dispose();
    isLoading.dispose();
    usserNameController.dispose();
    passwordController.dispose();
    focusUserName.dispose();
    focusPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                        "Welcome Back to your Pet's Store",
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
            SizedBox(height: 50.h),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
              child: Card(
                elevation: 3,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10.h,
                        horizontal: 10.w,
                      ),
                      child: CustomFormTextWidget(
                        prefixIcon: Icon(
                          Icons.person,
                          color: const Color.fromARGB(255, 16, 75, 19),
                        ),
                        myfocus: focusUserName,
                        nextfocus: focusPassword,
                        controller: usserNameController,
                        typeinput: TextInputType.text,
                        hinttext: 'Enter Your User Name',
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(
                        // vertical: 10.w,
                        horizontal: 10.h,
                      ),
                      child: ValueListenableBuilder(
                        valueListenable: showPass,
                        builder: (context, value, child) {
                          return CustomFormTextWidget(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: const Color.fromARGB(255, 16, 75, 19),
                            ),
                            obscure: value,
                            myfocus: focusPassword,
                            controller: passwordController,
                            typeinput: TextInputType.visiblePassword,
                            suffixIcon: IconButton(
                              icon: Icon(
                                value ? Icons.visibility_off : Icons.visibility,
                                color: const Color.fromARGB(255, 16, 75, 19),
                              ),
                              onPressed: () {
                                showPass.value = !value;
                              },
                            ),
                            hinttext: 'Enter Your Password',
                          );
                        },
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.resetPassword);
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: const Color.fromARGB(215, 0, 0, 0),
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.symmetric(horizontal: 50.w),
                      child: ValueListenableBuilder(
                        valueListenable: isLoading,
                        builder: (context, value, child) {
                          return ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(
                                255,
                                16,
                                75,
                                19,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ),

                            onPressed: value
                                ? null
                                : () async {
                                    isLoading.value = true;
                                    try {
                                      await typeinsertlogin(userName: usserNameController.text, password:passwordController.text);
                                    } catch (e) {
                                      print("Error during login: $e");
                                      showmessage(
                                        "errrrrrrrrro ",
                                        Color.fromARGB(255, 255, 0, 0),
                                      );
                                    } finally {
                                      isLoading.value = false;
                                    }
                                  },
                            child: Center(
                              child: Text(
                                value ? "Loading..." : "Login",
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
                        vertical: 5.w,
                        horizontal: 10.h,
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.signup);
                        },
                        child: Text(
                          "Don't have an account? Join us",
                          style: TextStyle(
                            color: const Color.fromARGB(185, 0, 0, 0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
