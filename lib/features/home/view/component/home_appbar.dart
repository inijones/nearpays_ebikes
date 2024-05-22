import 'package:e_bikes/components/text_widget.dart';
import 'package:e_bikes/constants/app_assets_path.dart';
import 'package:e_bikes/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 60.h),
        Row(
          children: [
            Image.asset(
              AppAssets.avatar,
              height: 48.h,
              width: 48.w,
            ),
            const Spacer(),
            SvgPicture.asset(AppAssets.notificationIcon),
          ],
        ),

        SizedBox(height: 20.h),

        //Hello Good Morning
        InterText(
          text: "Hello Good Morning!",
          textColor: AppColor.navyBlue,
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
        ),
      ],
    );
  }
}
