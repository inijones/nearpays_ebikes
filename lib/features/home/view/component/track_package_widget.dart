
import 'package:e_bikes/components/button.dart';
import 'package:e_bikes/components/text_widget.dart';
import 'package:e_bikes/components/textfield_box.dart';
import 'package:e_bikes/config/navigator.dart';
import 'package:e_bikes/constants/app_assets_path.dart';
import 'package:e_bikes/constants/app_colors.dart';
import 'package:e_bikes/features/track/view/track_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TrackPackageWidget extends StatelessWidget {
  const TrackPackageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: 307.h,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AppAssets.trackBg,
          ),
        ),
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 50.0.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InterText(
                text: "Tracking Your Package",
                textColor: AppColor.darkerNavy,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 10.h),
    
              SizedBox(
                height: 40.h,
                width: 240.w,
                child: InterText(
                  text:
                      "Enter the receipt number that has been given by the officer",
                  maxLines: 2,
                  textColor: AppColor.gold,
                  fontSize: 12.sp,
                ),
              ),
              SizedBox(height: 10.h),
    
              TextFieldBox(
                width: 280.w,
                fillColor: Colors.transparent,
                hintText: "Enter the receipt number",
              ),
    
              SizedBox(height: 20.h),
    
              // Button
              AppOutlinedButton(
                width: 279.w,
                onPressed: () {
                  navigate(context, const TrackScreen());
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InterText(text: "Track Now", fontSize: 14.sp),
                      const Spacer(),
                      SvgPicture.asset(
                        AppAssets.forwardArrow,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
