import 'package:e_bikes/components/text_widget.dart';
import 'package:e_bikes/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({
    super.key,
    this.id,
    this.imageText,
    this.status,
  });

  final String? id;
  final String? imageText;
  final String? status;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      height: 56.h,
      child: Row(
        children: [
          Container(
            height: 56.h,
            width: 56.w,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xffF1F6FB)),
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
            children: [
              InterText(
                text: id ?? "SCP9374826473",
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                textColor: AppColor.darkBlue,
              ),
              InterText(
                text: status ?? "In the process",
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                textColor: const Color(0xff7A809D),
              ),
            ],
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios,
            color: Color(0xff7A809D),
            size: 16,
          )
        ],
      ),
    );
  }
}
