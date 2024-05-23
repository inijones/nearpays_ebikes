import 'package:e_bikes/components/text_widget.dart';
import 'package:e_bikes/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrackingHistoryWidget extends StatelessWidget {
  const TrackingHistoryWidget({
    super.key,
    this.imageBgColor,
    this.imageText,
    this.time,
    this.title,
    this.subtitle,
    this.showLine = true,
  });

  final Color? imageBgColor;
  final String? imageText;
  final String? time;
  final String? title;
  final String? subtitle;
  final bool? showLine;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 56.h,
          child: Row(
            children: [
              Container(
                height: 56.h,
                width: 56.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: imageBgColor ?? const Color(0xffF1F6FB),
                ),
                child: Center(
                  child: Text(
                    imageText ?? "📦",
                    style: TextStyle(fontSize: 24.sp),
                  ),
                ),
              ),
              SizedBox(width: 15.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InterText(
                    text: title ?? "In Delivery",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    textColor: AppColor.darkBlue,
                  ),
                  InterText(
                    text: subtitle ?? "Bali, Indonesia",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    textColor: const Color(0xff7A809D),
                  ),
                ],
              ),
              const Spacer(),
              Center(
                child: InterText(
                  text: time ?? "00.00 PM",
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  textColor: const Color(0xff7A809D),
                ),
              ),
            ],
          ),
        ),
        if (showLine == true)
          Container(
            margin: EdgeInsets.only(left: 30.w),
            width: 1,
            height: 40.h,
            color: const Color(0xffDFE6ED),
          ),
      ],
    );
  }
}
