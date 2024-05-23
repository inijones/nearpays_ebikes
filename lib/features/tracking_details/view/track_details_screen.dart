import 'package:e_bikes/components/text_widget.dart';
import 'package:e_bikes/constants/app_colors.dart';
import 'package:e_bikes/features/tracking_details/components/collapsed_widget.dart';
import 'package:e_bikes/features/tracking_details/components/track_details_container.dart';
import 'package:e_bikes/features/tracking_details/components/tracking_history_widget.dart';
import 'package:e_bikes/features/tracking_details/components/tracking_map.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../../../constants/app_assets_path.dart';

class TrackDetailsScreen extends StatefulWidget {
  const TrackDetailsScreen({super.key});

  @override
  State<TrackDetailsScreen> createState() => _TrackDetailsScreenState();
}

class _TrackDetailsScreenState extends State<TrackDetailsScreen> {
  BorderRadiusGeometry radius = BorderRadius.only(
    topLeft: Radius.circular(30.0.r),
    topRight: Radius.circular(30.0.r),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.mapImage),
            fit: BoxFit.fill,
          ),
        ),
        child: SlidingUpPanel(
          minHeight: 120.h,
          maxHeight: 700.h,
          body: const MapBackgroundImage(),
          panel: SizedBox(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
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
                  Row(
                    children: [
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
                      const Spacer(),
                      SvgPicture.asset(AppAssets.twoDots),
                    ],
                  ),

                  SizedBox(height: 20.h),

                  /// Details Widget
                  // Yellow Container
                  const TrackingContainerWidget(),

                  SizedBox(height: 20.h),

                  // History
                  InterText(
                    text: "History",
                    textColor: AppColor.darkGrayBlue,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),

                  SizedBox(height: 20.h),

                  // History Widget
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TrackingHistoryWidget(
                        imageBgColor: AppColor.brightYellow,
                        imageText: "🚚",
                      ),
                      TrackingHistoryWidget(
                        imageText: "📬",
                        title: "Transit - Sending City",
                        subtitle: "Jarkata, Indonesia",
                        time: "21:00 PM",
                      ),
                      TrackingHistoryWidget(
                        imageText: "📦",
                        title: "Send from Sukabumi",
                        subtitle: "Sukabumi, Indonesia",
                        time: "19:00 PM",
                        showLine: false,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          collapsed: CollapsedWidget(radius: radius),
          borderRadius: radius,
        ),
      ),
    );
  }
}
