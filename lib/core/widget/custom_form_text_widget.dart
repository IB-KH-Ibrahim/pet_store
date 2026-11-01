import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// suffixIcon: IconButton(
//                             icon: Icon(
//                               value ? Icons.visibility_off : Icons.visibility,
//                               color: const Color.fromARGB(255, 134, 66, 184),
//                             ),
//                             onPressed: () {
//                               showpass.value = !value;
//                             },
//                           ),

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
    return TextFormField(
      focusNode: myfocus,
      onFieldSubmitted: (value) =>
          FocusScope.of(context).requestFocus(nextfocus),
      keyboardType: typeinput,
      controller: controller,

      obscureText: obscure ?? false,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromARGB(255, 255, 255, 255),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: Colors.white),
        ),

        hintText: hinttext,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
