import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet/core/routes.dart';
import 'package:pet/core/widget/custom_form_text_widget.dart';
import 'package:pet/core/widget/showmessage.dart';
import 'package:pet/featuser/auth/view_model/cubit/login_cubit.dart';
import 'package:pet/featuser/auth/view_model/cubit/login_state.dart';
import 'package:pet/featuser/auth/view_model/cubit/password_visibility_cubit.dart';
import 'package:pet/featuser/auth/view_model/cubit/password_visibility_state.dart';
import 'package:pet/main.dart';

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

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String logintext = 'Login';
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PasswordVisibilityCubit()),
        BlocProvider(create: (context) => LoginCubit()),
      ],
      child: BlocListener<LoginCubit, LoginStete>(
        listener: (context, state) {
          switch (state) {
            case LoginInitial():
              return;
            case LoginLoading():
              logintext = 'Loading...';
            case LoginSuccess():
              showmessage('Login successful', Color.fromARGB(255, 41, 197, 39));
              Navigator.pushReplacementNamed(
                navigatorKey.currentContext!,
                AppRoutes.main,
              );
              logintext = 'Login';
            case LoginError():
              showmessage('The password is invalid', Colors.red);
          }
        },
        child: Scaffold(
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
                  padding: EdgeInsets.symmetric(
                    vertical: 10.h,
                    horizontal: 15.w,
                  ),
                  child: Card(
                    elevation: 3,
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.h,
                              horizontal: 10.w,
                            ),
                            child: CustomFormTextWidget(
                              validat: (value) {
                                if (value == null || value.isEmpty) {
                                  return "This field is required";
                                }
                                return null;
                              },
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
                            child:
                                BlocBuilder<
                                  PasswordVisibilityCubit,
                                  PasswordVisibilityState
                                >(
                                  builder: (context, state) {
                                    return CustomFormTextWidget(
                                      validat: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "This field is required";
                                        }
                                        if (value.length < 8) {
                                          return 'Password must be at least 8 characters';
                                        }
                                        return null;
                                      },

                                      prefixIcon: Icon(
                                        Icons.lock,
                                        color: const Color.fromARGB(
                                          255,
                                          16,
                                          75,
                                          19,
                                        ),
                                      ),
                                      obscure: state.statePassword,
                                      myfocus: focusPassword,
                                      controller: passwordController,
                                      typeinput: TextInputType.visiblePassword,
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          state.statePassword
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                          color: const Color.fromARGB(
                                            255,
                                            16,
                                            75,
                                            19,
                                          ),
                                        ),
                                        onPressed: () {
                                          context
                                              .read<PasswordVisibilityCubit>()
                                              .changeVisibilityPassword();
                                        },
                                      ),
                                      hinttext: 'Enter Your Password',
                                    );
                                  },
                                ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                AppRoutes.resetPassword,
                              );
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
                            padding: EdgeInsetsGeometry.symmetric(
                              horizontal: 50.w,
                            ),
                            child: BlocSelector<LoginCubit, LoginStete, bool>(
                              selector: (state) => state is LoginLoading,
                              builder: (context, state) {
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
                                  onPressed: state
                                      ? null
                                      : () async {
                                          if (formKey.currentState!
                                              .validate()) {
                                            context.read<LoginCubit>().logIn(
                                              userName:
                                                  usserNameController.text,
                                              password: passwordController.text,
                                            );
                                          }
                                        },
                                  child: Center(
                                    child: Text(
                                      state ? 'Loading...' : 'Login',
                                      style: TextStyle(
                                        color: state
                                            ? const Color.fromARGB(
                                                255,
                                                16,
                                                75,
                                                19,
                                              )
                                            : Colors.white,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
