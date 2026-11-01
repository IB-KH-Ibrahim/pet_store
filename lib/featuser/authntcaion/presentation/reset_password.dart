import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet/core/widget/custom_form_text_widget.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

final userNameController = TextEditingController();
final focusUserName = FocusNode();
final ValueNotifier<bool> isSend = ValueNotifier<bool>(false);

class _ResetPasswordState extends State<ResetPassword> {
  @override
  void dispose() {
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
            color: Colors.black.withValues(alpha: 0.6),
          ),
          Column(
            children: [
              Image.asset("name"),
              Padding(
                padding:  EdgeInsets.symmetric(vertical: 10.w,horizontal: 10.h),
                child: CustomFormTextWidget(
                  prefixIcon:  Icon(
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
                            value ? "Waiteing..." : "Send",
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
            ],
          ),
        ],
      ),
    );
  }
}
