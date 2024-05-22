import 'package:e_bikes/components/text_widget.dart';
import 'package:e_bikes/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Function onClick;
  final String text;
  final double? radius;
  final Color? buttonColor;
  final Color? textColor;
  final Color? progressColor;
  final double? textSize;
  final FontWeight? fontWeight;
  final bool isOutline;
  final Color? borderColor;
  final EdgeInsetsGeometry? padding;

  const AppButton(
      {super.key,
      required this.onClick,
      required this.text,
      this.height,
      this.width,
      this.radius,
      this.buttonColor,
      this.textColor,
      this.progressColor,
      this.textSize,
      this.fontWeight,
      this.isOutline = false,
      this.borderColor,
      this.padding});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 327,
      height: height ?? 48,
      child: Container(
        height: height ?? 56,
        width: width ?? 330,
        decoration: BoxDecoration(
          color: isOutline ? Colors.white : buttonColor ?? AppColor.black,
          borderRadius: radius != null
              ? BorderRadius.circular(radius!)
              : BorderRadius.circular(8.0),
          border: isOutline
              ? Border.all(
                  color: borderColor ?? Colors.transparent,
                )
              : null,
        ),
        child: InkWell(
          onTap: () {
            onClick();
          },
          borderRadius: radius != null
              ? BorderRadius.circular(radius!)
              : BorderRadius.circular(8.0),
          child: Center(
            child: InterText(
              text: text,
              textColor: isOutline ? Colors.black : textColor ?? Colors.white,
              fontSize: textSize ?? 16,
              fontWeight: fontWeight ?? FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

class AppOutlinedButton extends StatelessWidget {
  final void Function()? onPressed;
  final double? width;
  final double? height;
  final Widget? child;

  ///If child is null the child is assumed to be a text widget
  final String? text;
  const AppOutlinedButton({
    super.key,
    this.onPressed,
    this.child,
    this.text,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 327.w,
      height: height ?? 56.h,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(52.r),
          ),
        ),
        onPressed: onPressed,
        child: child ??
            InterText(
              text: text ?? "",
              fontWeight: FontWeight.w500,
              textColor: const Color(0xff242739),
            ),
      ),
    );
  }
}
