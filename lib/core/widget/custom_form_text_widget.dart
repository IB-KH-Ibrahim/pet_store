import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFormTextWidget extends StatelessWidget {
  final FocusNode myfocus;
  final FocusNode? nextfocus;
  final TextEditingController controller;
  final TextInputType typeinput;
  final String hinttext;
  final Widget? suffixIcon;
  final bool? obscure;
  final Widget prefixIcon;

  const new({
    super.key,
    required this.myfocus,
    this.nextfocus,
    required this.controller,
    required this.typeinput,
    required this.hinttext,
    this.suffixIcon,
    this.obscure,
    required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: TextFormField(
        focusNode: myfocus,
        onFieldSubmitted: (value) =>
            FocusScope.of(context).requestFocus(nextfocus),
        keyboardType: typeinput,
        controller: controller,

        obscureText: obscure ?? false,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromARGB(255, 255, 255, 255),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(10.r),
          ),

          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),

            borderRadius: BorderRadius.circular(10.r),
          ),

          hintText: hinttext,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintStyle: TextStyle(color: Colors.grey)
        ),
      ),
    );
  }
}
