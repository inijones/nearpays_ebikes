
import 'package:e_bikes/constants/app_assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AppAssets.avatar,
          height: 48.h,
          width: 48.w,
        ),
        const Spacer(),
        SvgPicture.asset(AppAssets.notificationIcon),
      ],
    );
  }
}
