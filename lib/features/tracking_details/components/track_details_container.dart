import 'package:e_bikes/components/text_widget.dart';
import 'package:e_bikes/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrackingContainerWidget extends StatelessWidget {
  const TrackingContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
      height: 238.h,
      width: 327.w,
      decoration: BoxDecoration(
        color: AppColor.goldYellow,
        borderRadius: BorderRadius.all(
          Radius.circular(24.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DetailsWidget(),
          Divider(
            thickness: 1.h,
            color: AppColor.goldYellow,
          ),
          const DetailsWidget(
            details: "2,50 USD",
            subDetails: "Postal Fee",
          ),
          Divider(
            thickness: 1.h,
            color: AppColor.goldYellow,
          ),
          const DetailsWidget(
            details: "Bali, Indonesia",
            subDetails: "Parcel, 24kg",
          ),
        ],
      ),
    );
  }
}

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({
    super.key,
    this.details,
    this.subDetails,
  });

  final String? details;
  final String? subDetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InterText(
          text: details ?? "Sukabumi, Indonesia",
          textColor: AppColor.darkGrayBlue,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 5.h),
        InterText(
          text: subDetails ?? "No receipt : SCP6653728497",
          textColor: AppColor.gold,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
        ),
        SizedBox(height: 5.h),
      ],
    );
  }
}
