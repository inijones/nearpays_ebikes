
import 'package:e_bikes/components/text_widget.dart';
import 'package:e_bikes/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CollapsedWidget extends StatelessWidget {
  const CollapsedWidget({
    super.key,
    required this.radius,
  });

  final BorderRadiusGeometry radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: radius,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.h),
          Center(
            child: Container(
              height: 5.h,
              width: 48.w,
              decoration: const BoxDecoration(
                color: AppColor.veryLightGray,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InterText(
                text: "Estimate arrives in",
                textColor: AppColor.mediumGrayBlue,
                fontSize: 14.sp,
              ),
              InterText(
                text: "2h 40m",
                textColor: AppColor.darkGrayBlue,
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
