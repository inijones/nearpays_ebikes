
import 'package:e_bikes/components/text_widget.dart';
import 'package:e_bikes/config/navigator.dart';
import 'package:e_bikes/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MapBackgroundImage extends StatelessWidget {
  const MapBackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 60.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0.w),
            child: Row(
              children: [
                InkWell(
                  onTap: () => popView(context),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: AppColor.mediumGray,
                    size: 15.sp,
                  ),
                ),
                const Spacer(),
                InterText(
                  text: "Tracking Details",
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  textColor: AppColor.navyBlue,
                ),
                const Spacer(),
                SizedBox(width: 15.sp),
              ],
            ),
          ),
    
          SizedBox(height: 50.h),
    
          // Tracking Id
          Container(
            height: 88.h,
            width: 327.w,
            decoration: BoxDecoration(
              color: AppColor.brightYellow,
              borderRadius: BorderRadius.all(
                Radius.circular(46.r),
              ),
            ),
            child: Center(
              child: Container(
                height: 56.h,
                width: 295.w,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColor.darkNavyBlue,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(28.r),
                  ),
                ),
                child: Center(
                  child: InterText(
                    text: "SCP6653728497",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    textColor: AppColor.darkNavyBlue,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
