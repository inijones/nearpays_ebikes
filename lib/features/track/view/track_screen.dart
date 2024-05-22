import 'package:e_bikes/components/text_widget.dart';
import 'package:e_bikes/constants/app_colors.dart';
import 'package:e_bikes/features/home/view/component/history_widget.dart';
import 'package:e_bikes/features/home/view/component/home_appbar.dart';
import 'package:e_bikes/features/home/view/component/track_package_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrackScreen extends StatefulWidget {
  const TrackScreen({super.key});

  @override
  State<TrackScreen> createState() => _TrackScreenState();
}

class _TrackScreenState extends State<TrackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppBarWidget(),
              SizedBox(height: 20.h),
              const TrackPackageWidget(),

              SizedBox(height: 40.h),

              // Track History
              InterText(
                text: "Track History",
                textColor: AppColor.darkGrayBlue,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),

              // Track History Widget

              SizedBox(height: 20.h),

              const Column(
                children: [
                  HistoryWidget(),
                  HistoryWidget(
                    id: "SCP9374826473",
                    status: "In delivery",
                    imageText: "🚚",
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
