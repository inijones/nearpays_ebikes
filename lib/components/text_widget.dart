import 'package:flutter/material.dart';

class InterText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? textColor;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final int? maxLines;
  final bool? underlineText;

  const InterText({
    Key? key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.textColor,
    this.textAlign,
    this.maxLines,
    this.underlineText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines ?? 1,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
        decoration: underlineText == true ? TextDecoration.underline : null,
        fontFamily: 'Inter',
        fontSize: fontSize ?? 16,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: textColor ?? Colors.white,
      ),
    );
  }
}
