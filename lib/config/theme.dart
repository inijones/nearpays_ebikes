import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


//TODO: update zeeh colors.
ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primarySwatch: const MaterialColor(
      0xFF000000,
      {
        50: Color.fromRGBO(255, 27, 3, .1),
        100: Color.fromRGBO(0, 0, 0, .2),
        200: Color.fromRGBO(0, 0, 0, .3),
        300: Color.fromRGBO(0, 0, 0, .4),
        400: Color.fromRGBO(0, 0, 0, .5),
        500: Color.fromRGBO(0, 0, 0, .6),
        600: Color.fromRGBO(0, 0, 0, .7),
        700: Color.fromRGBO(0, 0, 0, .8),
        800: Color.fromRGBO(0, 0, 0, .9),
        900: Color.fromRGBO(0, 0, 0, 1),
      },
    ),
    primaryColor: Colors.grey,
    iconTheme: const IconThemeData(color: Colors.black, size: 24),
    // pageTransitionsTheme: const PageTransitionsTheme(builders: {
    //   TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    //   TargetPlatform.iOS: CupertinoPageTransitionsBuilder()
    // }),
    fontFamily: 'Inter',
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xffFFFFFF),
      elevation: 0,
      foregroundColor: Color(0xff022F32),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.zero,
        side: const BorderSide(
          color: Color(0xFFDAD9D9),
        ),
      ),
    ),
    inputDecorationTheme:  InputDecorationTheme(
      hintStyle: TextStyle(
        color: Colors.black,
        fontFamily: 'Inter',
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
      ),
      enabledBorder:  OutlineInputBorder(
        borderSide: const  BorderSide(
          width: 1,
          color: Colors.black,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(28.r),
        ),
      ),
    ),
  );
}
