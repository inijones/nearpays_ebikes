import 'package:e_bikes/components/button.dart';
import 'package:e_bikes/components/text_widget.dart';
import 'package:e_bikes/config/navigator.dart';
import 'package:e_bikes/constants/app_assets_path.dart';
import 'package:e_bikes/constants/app_colors.dart';
import 'package:e_bikes/features/home/view/home_screeen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.loginBg),
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 150.h),
              Image.asset(AppAssets.building, height: 237.h, width: 322.w),
              SizedBox(height: 70.h),
              InterText(
                text: "Welcome to E-Bikes",
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
                textColor: AppColor.darkNavy2,
              ),
              SizedBox(height: 10.h),
              SizedBox(
                width: 304.w,
                child: InterText(
                  text:
                      "Buying Electric bikes just got a lot easier, Try us today.",
                  maxLines: 2,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  textColor: AppColor.gold,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 30.h),
              AppOutlinedButton(
                onPressed: () {
                  navigate(context, const HomeScreen());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      AppAssets.googleIcon,
                      width: 32.w,
                      height: 32.h,
                    ),
                    const Spacer(),
                    InterText(text: "Login with Google", fontSize: 14.sp),
                    const Spacer(),
                    SizedBox(width: 32.w),
                  ],
                ),
              ),
              SizedBox(height: 40.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InterText(
                    text: "Don't have an account?",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    textColor: AppColor.gold,
                  ),
                  SizedBox(width: 5.w),
                  InterText(
                    text: "Sign Up",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    textColor: AppColor.darkNavy,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
