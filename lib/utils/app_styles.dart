import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(context) => TextStyle(
        color: const Color(0xff064061),
        fontFamily: 'Montserrat',
        fontSize: getFontSizeResponsive(context, fontSize: 16),
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleMedium16(context) => TextStyle(
        color: const Color(0xff064061),
        fontFamily: 'Montserrat',
        fontSize: getFontSizeResponsive(context, fontSize: 16),
        fontWeight: FontWeight.w500,
      );

  static TextStyle styleSemiBold16(context) => TextStyle(
        color: const Color(0xff064061),
        fontFamily: 'Montserrat',
        fontSize: getFontSizeResponsive(context, fontSize: 16),
        fontWeight: FontWeight.w600,
      );

  static TextStyle styleSemiBold20(context) => TextStyle(
        color: const Color(0xff064061),
        fontFamily: 'Montserrat',
        fontSize: getFontSizeResponsive(context, fontSize: 20),
        fontWeight: FontWeight.w600,
      );

  static TextStyle styleRegular12(context) => TextStyle(
        color: const Color(0xffAAAAAA),
        fontFamily: 'Montserrat',
        fontSize: getFontSizeResponsive(context, fontSize: 12),
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleSemiBold24(context) => TextStyle(
        color: const Color(0xff4EB7F2),
        fontFamily: 'Montserrat',
        fontSize: getFontSizeResponsive(context, fontSize: 24),
        fontWeight: FontWeight.w600,
      );

  static TextStyle styleRegular14(context) => TextStyle(
        color: const Color(0xffAAAAAA),
        fontFamily: 'Montserrat',
        fontSize: getFontSizeResponsive(context, fontSize: 14),
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleSemiBold18(context) => TextStyle(
        color: const Color(0xffFFFFFF),
        fontFamily: 'Montserrat',
        fontSize: getFontSizeResponsive(context, fontSize: 18),
        fontWeight: FontWeight.w600,
      );

  static TextStyle styleBold16(context) => TextStyle(
        color: const Color(0xff4EB7F2),
        fontFamily: 'Montserrat',
        fontSize: getFontSizeResponsive(context, fontSize: 16),
        fontWeight: FontWeight.w700,
      );

  static TextStyle styleMedium20(context) => TextStyle(
        color: const Color(0xffFFFFFF),
        fontFamily: 'Montserrat',
        fontSize: getFontSizeResponsive(context, fontSize: 20),
        fontWeight: FontWeight.w500,
      );

  static double getFontSizeResponsive(context, {required double fontSize}) {
    double scaleFactor = getScaleFactor(context);
    double responsiveFontSize = fontSize * scaleFactor;
    double lowerLimit = fontSize * .8;
    double upperLimit = fontSize * 1.2;
    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  static double getScaleFactor(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    // var dispatcher = PlatformDispatcher.instance;
    // var physicalWidth = dispatcher.views.first.physicalSize.width;
    // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
    // var width = physicalWidth / devicePixelRatio;
    if (width < SizeConfig.tablet) {
      return width / 550;
    } else if (width < SizeConfig.desktop) {
      return width / 1000;
    } else {
      return width / 1920;
    }
  }
}
