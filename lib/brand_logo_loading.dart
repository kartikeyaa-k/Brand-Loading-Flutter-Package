library brand_logo_loading;

import 'package:brand_logo_loading/src/rotate.dart';
import 'package:brand_logo_loading/src/scale.dart';
import 'package:flutter/material.dart';

class BrandLogoLoading {
  BrandLogoLoading._();

  static dismissLoading({required BuildContext context}) {
    Navigator.pop(context);
  }

  static balance({
    required BuildContext context,
    required String logo,
    required Curve animationType,
    int? durationInMilliSeconds,
    bool? isClockWise,
    Color? logoBackdropColor,
    double? height,
    double? width,
    BoxFit? boxFit,
    Color? fullScreenBackdropColor,
    Key? key,
  }) {
    showDialog(
        context: context,
        barrierDismissible: false,
        useRootNavigator: true,
        barrierColor: fullScreenBackdropColor?? Colors.black54,
        builder: (BuildContext context) => Balance(
              logo: logo,
              animationType: animationType,
              speed: durationInMilliSeconds ?? 600,
              isClockWise: isClockWise ?? true,
          logoBackdropColor: logoBackdropColor ?? Colors.transparent,
              height: height ?? 100.0,
              width: width ?? 100,
              boxFit: boxFit ?? BoxFit.cover,
              key: key,
            ));
  }


  static scale({
    required BuildContext context,
    required String logo,
    required Curve animationType,
    int? durationInMilliSeconds,
    bool? isClockWise,
    Color? logoBackdropColor,
    double? height,
    double? width,
    BoxFit? boxFit,
    Color? fullScreenBackdropColor,
    Key? key,
  }) {
    showDialog(
        context: context,
        barrierDismissible: false,
        useRootNavigator: true,
        barrierColor: fullScreenBackdropColor?? Colors.black54,
        builder: (BuildContext context) => Scale(
          logo: logo,
          animationType: animationType,
          speed: durationInMilliSeconds ?? 600,
          isClockWise: isClockWise ?? true,
          logoBackdropColor: logoBackdropColor ?? Colors.transparent,
          height: height ?? 100.0,
          width: width ?? 100,
          boxFit: boxFit ?? BoxFit.cover,
          key: key,
        ));
  }
}
