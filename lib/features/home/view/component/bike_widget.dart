import 'package:e_bikes/constants/app_assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BikeWidget extends StatelessWidget {
  const BikeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.w),
      width: 255.w,
      height: 265.h,
      decoration: BoxDecoration(
        color: const Color(0xffF1F6FB),
        borderRadius: BorderRadius.all(
          Radius.circular(32.r),
        ),
      ),
      child: Center(
        child: Image.asset(
          AppAssets.bike,
          height: 229.h,
          width: 199.w,
        ),
      ),
    );
  }
}
