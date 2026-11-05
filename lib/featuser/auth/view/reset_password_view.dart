import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet/core/widget/custom_form_text_widget.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}


class _ResetPasswordState extends State<ResetPassword> {
final userNameController = TextEditingController();
final focusUserName = FocusNode();
final ValueNotifier<bool> isSend = ValueNotifier<bool>(false);
  @override
  void dispose() {
    isSend.dispose();
    userNameController.dispose();
    focusUserName.dispose();
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
            color: const Color.fromARGB(
              255,
              255,
              255,
              255,
            ).withValues(alpha: 0.5),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(
                    top: 175.h,
                    left: 10.w,
                    right: 10.w,
                  ),
                  child: SizedBox(width:200.w, height: 200.h, child: Image.asset('assets/lock.png')),
                ),
                Center(
                  child: Text(
                    "don't worry, we will send you a link to  reset your password",textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 16, 75, 19),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10.h,
                    bottom: 20.h,
                    left: 10.w,
                    right: 10.w,
                  ),
                  child: CustomFormTextWidget(
                    prefixIcon: Icon(
                      Icons.person,
                      color: const Color.fromARGB(255, 16, 75, 19),
                    ),
                    myfocus: focusUserName,
                    controller: userNameController,
                    typeinput: TextInputType.text,
                    hinttext: "Enter Your User Name",
                  ),
                ),
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 75.w),
                  child: ValueListenableBuilder(
                    valueListenable: isSend,
                    builder: (context, value, child) {
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 16, 75, 19),
                        ),
            
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            value ? "Waiteing..." : "Send",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
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
        ],
      ),
    );
  }
}
