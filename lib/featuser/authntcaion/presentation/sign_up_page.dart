import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet/core/widget/custom_form_text_widget.dart';
import 'package:pet/featuser/authntcaion/presentation/log_in_screen.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

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
final ValueNotifier<bool> isLoading = ValueNotifier<bool>(false);
final ValueNotifier<bool> showPass = ValueNotifier<bool>(true);
final ValueNotifier<bool> showRepass = ValueNotifier<bool>(true);

class _SignUpPageState extends State<SignUpPage> {
  @override
  void dispose() {
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
                    top: 100.h,
                    bottom: 30.w,
                    left: 10.w,
                    right: 10.w,
                  ),
                  child: Text(
                    "We are thrilled to have you join us!",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Zeyada",
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.w,
                    horizontal: 10.h,
                  ),
                  child: CustomFormTextWidget(
                    prefixIcon:  Icon(
          Icons.person,
          color: const Color.fromARGB(255, 16, 75, 19),
        ),
                    myfocus: focusUserName,
                    nextfocus: focusFirstName,
                    controller: userNameController,
                    typeinput: TextInputType.text,
                    hinttext: 'User Name',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.h,
                    horizontal: 10.w,
                  ),
                  child: CustomFormTextWidget(
                    prefixIcon:  Icon(
          Icons.person,
          color: const Color.fromARGB(255, 16, 75, 19),
        ),
                    myfocus: focusFirstName,
                    nextfocus: focusLastName,
                    controller: firstNameController,
                    typeinput: TextInputType.text,
                    hinttext: 'First Name',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.h,
                    horizontal: 10.w,
                  ),
                  child: CustomFormTextWidget(
                    prefixIcon:  Icon(
          Icons.person,
          color: const Color.fromARGB(255, 16, 75, 19),
        ),
                    myfocus: focusLastName,
                    nextfocus: focusEmail,
                    controller: lastNameController,
                    typeinput: TextInputType.text,
                    hinttext: 'Last Name',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.h,
                    horizontal: 10.w,
                  ),
                  child: CustomFormTextWidget(
                    prefixIcon:  Icon(
          Icons.email,
          color: const Color.fromARGB(255, 16, 75, 19),
        ),
                    myfocus: focusEmail,
                    nextfocus: focusPhone,
                    controller: emailController,
                    typeinput: TextInputType.emailAddress,
                    hinttext: 'Email',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.h,
                    horizontal: 10.w,
                  ),
                  child: CustomFormTextWidget(
                    prefixIcon:  Icon(
          Icons.phone,
          color: const Color.fromARGB(255, 16, 75, 19),
        ),
                    myfocus: focusPhone,
                    nextfocus: focusPassword,
                    controller: phoneController,
                    typeinput: TextInputType.number,
                    hinttext: 'Phone',
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.w,
                    horizontal: 10.h,
                  ),
                  child: ValueListenableBuilder(
                    valueListenable: showpass,
                    builder: (context, value, child) {
                      return CustomFormTextWidget(
                        prefixIcon:  Icon(
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
                            showpass.value = !value;
                          },
                        ),
                        hinttext: 'Password',
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.w,
                    horizontal: 10.h,
                  ),
                  child: ValueListenableBuilder(
                    valueListenable: showRepass,
                    builder: (context, value, child) {
                      return CustomFormTextWidget(
                        prefixIcon:  Icon(
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

                        onPressed: () {},
                        child: Center(
                          child: Text(
                            value ? "joining..." : "joinus",
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
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LogInScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Already have an account? Log in",
                        style: TextStyle(
                          color: const Color.fromARGB(186, 255, 255, 255),
                        ),
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
