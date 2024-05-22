
import 'package:e_bikes/components/button.dart';
import 'package:e_bikes/components/text_widget.dart';
import 'package:e_bikes/config/navigator.dart';
import 'package:e_bikes/constants/app_assets_path.dart';
import 'package:e_bikes/constants/app_colors.dart';
import 'package:e_bikes/features/home/view/component/home_page.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class YellowBannerWidget extends StatelessWidget {
  const YellowBannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h,
      width: double.infinity,
      color: AppColor.brightYellow,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100.w,
              height: 36.h,
              child: InterText(
                text: "Gotten your E-Bike yet?",
                maxLines: 2,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                textColor: AppColor.gold,
              ),
            ),
            SizedBox(width: 20.w),
            AppOutlinedButton(
              width: 183.w,
              onPressed: () {
                navigate(context, const HomePage());
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InterText(text: "Your Orders", fontSize: 14.sp),
                    const Spacer(),
                    SvgPicture.asset(
                      AppAssets.forwardArrow,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
