import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet/core/widget/custom_form_text_widget.dart';
import 'package:pet/core/widget/showmessage.dart';
import 'package:pet/featuser/authntcaion/domain/auth.dart';
import 'package:pet/featuser/authntcaion/domain/parameters.dart';
import 'package:pet/featuser/authntcaion/presentation/sign_up_page.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

final usserNameController = TextEditingController();
final passwordController = TextEditingController();
final focusUserName = FocusNode();
final focusPassword = FocusNode();
final ValueNotifier<bool> isLoading = ValueNotifier<bool>(false);
final ValueNotifier<bool> showpass = ValueNotifier<bool>(true);

class _LogInScreenState extends State<LogInScreen> {
  @override
  void dispose() {
    usserNameController.dispose();
    passwordController.dispose();
    focusUserName.dispose();
    focusPassword.dispose();
    super.dispose();
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
            color: Colors.black.withValues(alpha: 0.6),
          ),

          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 200.h,
                    bottom: 10.h,
                    left: 90.w,
                    right: 90.w,
                  ),
                  child: SizedBox(
                    width: 200.w,
                    height: 200.h,
                    child: Image.asset("assets/logo_pet.png"),
                  ),
                ),
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
                    valueListenable: showpass,
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
                            showpass.value = !value;
                          },
                        ),
                        hinttext: 'Enter Your Password',
                      );
                    },
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => SignUpPage()),
                    // );
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: const Color.fromARGB(216, 255, 255, 255),
                      fontSize: 12,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 75.w),
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
                        ),

                        onPressed: value
                            ? null
                            : () async {
                                isLoading.value = true;
                                try {
                                  await Auth.loginValidation(
                                    LoginParameters(
                                      username: usserNameController.text,
                                      password: passwordController.text,
                                    ),
                                  );
                                } catch (e) {
                                  print(e);
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
                              fontFamily: "Zeyada",
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                    child: Text(
                      "Don't have an account? Join us",
                      style: TextStyle(
                        color: const Color.fromARGB(186, 255, 255, 255),
                      ),
                    ),
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
