import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet/core/model/user_model/parameters_user_model.dart';
import 'package:pet/core/routes.dart';
import 'package:pet/core/widget/custom_form_text_widget.dart';
import 'package:pet/core/widget/showmessage.dart';
import 'package:pet/featuser/auth/view_model/validation_request/validation_singup.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final ValueNotifier<bool> isLoading = ValueNotifier<bool>(false);
  final ValueNotifier<bool> showPass = ValueNotifier<bool>(true);
  final ValueNotifier<bool> showRepass = ValueNotifier<bool>(true);

  final userNameController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final repasswordController = TextEditingController();
  final focusUserName = FocusNode();
  final focusFirstName = FocusNode();
  final focusLastName = FocusNode();
  final focusEmail = FocusNode();
  final focusPhone = FocusNode();
  final focusPassword = FocusNode();
  final focusRepassword = FocusNode();
  @override
  void dispose() {
    showPass.dispose();
    showRepass.dispose();
    isLoading.dispose();
    userNameController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    repasswordController.dispose();
    focusUserName.dispose();
    focusFirstName.dispose();
    focusLastName.dispose();
    focusEmail.dispose();
    focusPhone.dispose();
    focusPassword.dispose();
    focusRepassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 100.h,
            left: 10.w,
            right: 10.w,
            bottom: 10.h,
          ),
          child: Card(
            color: const Color.fromARGB(201, 255, 255, 255),
            elevation: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.w,
                    right: 10.w,
                    top: 30.h,
                    bottom: 10.h,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                bottom: 2.h,
                                start: 10.w,
                              ),
                              child: Text(
                                "First Name:",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            CustomFormTextWidget(
                              prefixIcon: Icon(
                                Icons.person,
                                color: const Color.fromARGB(255, 16, 75, 19),
                              ),
                              myfocus: focusFirstName,
                              nextfocus: focusLastName,
                              controller: firstNameController,
                              typeinput: TextInputType.text,
                              hinttext: 'Ali',
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                bottom: 2.h,
                                start: 10.w,
                              ),
                              child: Text(
                                "Last Name:",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            CustomFormTextWidget(
                              prefixIcon: Icon(
                                Icons.person,
                                color: const Color.fromARGB(255, 16, 75, 19),
                              ),
                              myfocus: focusLastName,
                              nextfocus: focusUserName,
                              controller: lastNameController,
                              typeinput: TextInputType.text,
                              hinttext: 'Al Ali',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        bottom: 2.h,
                        start: 10.w,
                      ),
                      child: Text(
                        "User Name:",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    CustomFormTextWidget(
                      prefixIcon: Icon(
                        Icons.person,
                        color: const Color.fromARGB(255, 16, 75, 19),
                      ),
                      myfocus: focusUserName,
                      nextfocus: focusEmail,
                      controller: userNameController,
                      typeinput: TextInputType.text,
                      hinttext: 'Ali1',
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        bottom: 2.h,
                        start: 10.w,
                      ),
                      child: Text(
                        "Email:",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    CustomFormTextWidget(
                      prefixIcon: Icon(
                        Icons.email,
                        color: const Color.fromARGB(255, 16, 75, 19),
                      ),
                      myfocus: focusEmail,
                      nextfocus: focusPhone,
                      controller: emailController,
                      typeinput: TextInputType.text,
                      hinttext: 'Ali@gmail.com',
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        bottom: 2.h,
                        start: 10.w,
                      ),
                      child: Text(
                        "Phone:",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    CustomFormTextWidget(
                      prefixIcon: Icon(
                        Icons.phone,
                        color: const Color.fromARGB(255, 16, 75, 19),
                      ),
                      myfocus: focusPhone,
                      nextfocus: focusPassword,
                      controller: phoneController,
                      typeinput: TextInputType.text,
                      hinttext: '0911112222',
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        bottom: 2.h,
                        start: 10.w,
                      ),
                      child: Text(
                        "Password:",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    ValueListenableBuilder(
                      valueListenable: showPass,
                      builder: (context, value, child) {
                        return CustomFormTextWidget(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: const Color.fromARGB(255, 16, 75, 19),
                          ),
                          obscure: value,
                          myfocus: focusPassword,
                          nextfocus: focusRepassword,
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
                          hinttext: 'Password',
                        );
                      },
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        bottom: 2.h,
                        start: 10.w,
                      ),
                      child: Text(
                        "Confirm Password:",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    ValueListenableBuilder(
                      valueListenable: showRepass,
                      builder: (context, value, child) {
                        return CustomFormTextWidget(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: const Color.fromARGB(255, 16, 75, 19),
                          ),
                          obscure: value,
                          myfocus: focusRepassword,
                          controller: repasswordController,
                          typeinput: TextInputType.visiblePassword,
                          suffixIcon: IconButton(
                            icon: Icon(
                              value ? Icons.visibility_off : Icons.visibility,
                              color: const Color.fromARGB(255, 16, 75, 19),
                            ),
                            onPressed: () {
                              showRepass.value = !value;
                            },
                          ),
                          hinttext: 'Confirm Password',
                        );
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(
                    horizontal: 50.w,
                    vertical: 10.h,
                  ),
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

                        onPressed: () async {
                          if (passwordController.text.isNotEmpty &&
                              passwordController.text ==
                                  repasswordController.text) {
                            if (value) return;

                            

                            isLoading.value = true;

                            try {
                            
                              await typeinsertcreat(
                                ParametersUser(
                                  username: userNameController.text,
                                  firstName: firstNameController.text,
                                  lastName: lastNameController.text,
                                  email: emailController.text,
                                  password: passwordController.text,
                                  phone: phoneController.text,
                                ),
                              );
                            } catch (e) {
                              showmessage(
                                "A technical error occurred. We will fix it as soon as possible.",
                                const Color.fromARGB(255, 255, 0, 0),
                              );
                            } finally {
                              isLoading.value = false;
                            }
                          } else {
                            showmessage(
                              "Passwords do not match",
                              const Color.fromARGB(255, 255, 0, 0),
                            );
                          }
                        },
                        child: Center(
                          child: Text(
                            value ? "Wait..." : "create",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
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
                      Navigator.pushReplacementNamed(context, AppRoutes.login);
                    },
                    child: Text(
                      "Already have an account? Log in",
                      style: TextStyle(
                        color: const Color.fromARGB(185, 6, 6, 6),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
