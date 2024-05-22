import 'package:e_bikes/components/text_widget.dart';
import 'package:e_bikes/constants/app_assets_path.dart';
import 'package:e_bikes/constants/app_colors.dart';
import 'package:e_bikes/features/home/view/component/bike_widget.dart';
import 'package:e_bikes/features/home/view/component/home_appbar.dart';
import 'package:e_bikes/features/home/view/yellow_banner_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(viewportFraction: 2.5 / 3);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AppBarWidget(),

                    SizedBox(height: 20.h),

                    // E-Bikes
                    Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        height: 265.h,
                        width: double.infinity,
                        child: PageView(
                          clipBehavior: Clip.antiAlias,
                          padEnds: false,
                          pageSnapping: true,
                          controller: pageController,
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          children: [
                            ...List.generate(
                              4,
                              (index) => const BikeWidget(),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 25.h),

                    // Slider Controller Indicator
                    Center(
                      child: SmoothPageIndicator(
                        controller: pageController,
                        count: 4,
                        effect: SlideEffect(dotHeight: 6.sp, dotWidth: 6.sp),
                      ),
                    ),

                    SizedBox(height: 25.h),
                  ],
                ),
              ),

              // Yellow Banner
              const YellowBannerWidget(),

              // Youu too can join our Elite squad of E Bikers
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    AppAssets.ninjaBike,
                    height: 150.h,
                    width: 180.w,
                  ),
                  SizedBox(
                    width: 160.w,
                    height: 36.h,
                    child: InterText(
                      text: "You too can join our Elite squad of E-bikers",
                      maxLines: 2,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      textColor: AppColor.grayBlue,
                    ),
                  ),
                ],
              ),

              //
            ],
          ),
        ),
      ),
    );
  }
}
