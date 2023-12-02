import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeIndigo5001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.indigo5001.withOpacity(0.6),
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  // S text style
  static get sFProDisplayWhiteA700 => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 96.fSize,
        fontWeight: FontWeight.w200,
      ).sFProDisplay;
  // Title text style
  static get titleLargeIndigo5001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.indigo5001.withOpacity(0.6),
      );
}

extension on TextStyle {
  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }
}
