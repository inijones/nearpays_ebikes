import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


// Reusable TextField used App Wide
class TextFieldBox extends StatelessWidget {
  final String? hintText;
  final double? height;
  final double? width;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final TextInputAction? textInputAction;
  final bool? obscureText;
  final Widget? suffixColor;
  final Widget? prefixIcon;
  final bool? isCollapsed;
  final bool? isEnabled;
  final Function(String)? onChanged;
  final bool? autoFocus;
  final Widget? suffixIcon;
  final TextStyle? hintStyle;
  final Color? textColor;
  final bool? filled;
  final Color? fillColor;
  final int? maxLines;
  final FocusNode? focusNode;
  final Function()? onEditingComplete;
  final Color? borderColor;
  final TextInputType? keyboardType;
  final Color? prefixColor;
  final bool? autoCorrect;
  final bool? enableSuggestion;
  final List<TextInputFormatter>? inputFormatters;
  final double? fontSize;
  final String? prefixText;

  const TextFieldBox({
    Key? key,
    this.hintText,
    this.height,
    this.width,
    this.controller,
    this.validator,
    this.textColor,
    this.textInputAction,
    this.obscureText,
    this.suffixColor,
    this.prefixIcon,
    this.isCollapsed,
    this.isEnabled,
    this.onChanged,
    this.autoFocus,
    this.suffixIcon,
    this.hintStyle,
    this.filled,
    this.fillColor,
    this.maxLines,
    this.focusNode,
    this.onEditingComplete,
    this.borderColor,
    this.keyboardType,
    this.prefixColor,
    this.autoCorrect,
    this.enableSuggestion,
    this.inputFormatters,
    this.fontSize,
    this.prefixText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height,
      child: TextFormField(
        inputFormatters: inputFormatters,
        autocorrect: autoCorrect ?? true,
        enableSuggestions: enableSuggestion ?? true,
        keyboardType: keyboardType,
        controller: controller,
        validator: validator,
        focusNode: focusNode,
        maxLines: maxLines ?? 1,
        textInputAction: textInputAction,
        onEditingComplete: onEditingComplete,
        style: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          fontSize: fontSize ?? 16,
          color: Colors.black,
          decoration: TextDecoration.none,
        ),
        obscureText: obscureText ?? false,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          prefixText: prefixText,
          prefixStyle: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            fontSize: fontSize ?? 14,
            color: Colors.black,
            decoration: TextDecoration.none,
          ),
          prefixIconColor: prefixColor,
          fillColor: fillColor ?? Colors.white,
          filled: filled ?? true,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor ?? Colors.transparent,
              width: 2,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide:  BorderSide(
              color: Colors.red,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          hintText: hintText,
          hintStyle: hintStyle ??
              const TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color:  Color(0x805F6D7E),
              ),
        ),
      ),
    );
  }
}
