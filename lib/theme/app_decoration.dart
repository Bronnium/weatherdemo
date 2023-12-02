import 'package:flutter/material.dart';
import 'package:lucas_s_application2/core/app_export.dart';

class AppDecoration {
  // Gradient decorations
  static BoxDecoration get gradientBlackToWhiteA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.18, 0.2),
          end: Alignment(0.79, 0.92),
          colors: [
            appTheme.black900.withOpacity(0.4),
            appTheme.whiteA700.withOpacity(0.4),
          ],
        ),
      );
  static BoxDecoration get gradientBlueGrayToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.03, 0.01),
          end: Alignment(0.93, 0.96),
          colors: [
            appTheme.blueGray800,
            appTheme.gray900,
          ],
        ),
      );
  static BoxDecoration get gradientBlueGrayToGray900 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.03, -0.06),
          end: Alignment(0.93, 0.96),
          colors: [
            appTheme.blueGray800.withOpacity(0.26),
            appTheme.gray900.withOpacity(0.26),
          ],
        ),
      );
  static BoxDecoration get gradientBlueGrayToGray9001 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.03, 0.01),
          end: Alignment(0.93, 0.96),
          colors: [
            appTheme.blueGray800,
            appTheme.gray900,
          ],
        ),
      );
  static BoxDecoration get gradientGrayToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.24, 0.14),
          end: Alignment(0.78, 0.91),
          colors: [
            appTheme.gray100,
            appTheme.gray300,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        border: Border.all(
          color: appTheme.whiteA700,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder29 => BorderRadius.circular(
        29.h,
      );
  static BorderRadius get circleBorder32 => BorderRadius.circular(
        32.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL44 => BorderRadius.vertical(
        bottom: Radius.circular(44.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder2 => BorderRadius.circular(
        2.h,
      );
  static BorderRadius get roundedBorder44 => BorderRadius.circular(
        44.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
