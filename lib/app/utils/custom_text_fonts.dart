import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class MyCustomTextFonts {

  TextStyle bigTitleText(
      Color? textCol,
      ){
    return TextStyle(
      fontSize: 5.w,
      color: textCol,
      fontWeight: FontWeight.bold
    );
  }

  TextStyle emergencyBigTitleText(
      Color? textCol,
      ){
    return TextStyle(
      fontSize: 7.w,
      color: textCol,
      fontWeight: FontWeight.bold
    );
  }

  TextStyle bigText(
      Color? textCol,
      ){
    return TextStyle(
      fontSize: 5.w,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle mediumText(
      Color? textCol,
      ){
    return TextStyle(
      fontSize: 4.w,
      fontWeight: FontWeight.w500,
      color: textCol,
    );
  }

  TextStyle smallText(
      Color? textCol,
      ){
    return TextStyle(
      fontSize: 4.w,
      fontWeight: FontWeight.w500,
      color: textCol,
    );
  }
}