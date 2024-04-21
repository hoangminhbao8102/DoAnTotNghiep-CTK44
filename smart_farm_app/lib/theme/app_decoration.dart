import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillGray10002 => BoxDecoration(
    color: appTheme.gray10002,
  );
  static BoxDecoration get fillPrimary => BoxDecoration(
    color: theme.colorScheme.primary,
  );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
  // OutLine decorations
  static BoxDecoration outlinedGreen = BoxDecoration(
    color: appTheme.green200,
    border: Border.all(
      color: appTheme.green500,
      width: 5.h,
    ),
  );
  static BoxDecoration outlinedPrimary = BoxDecoration(
    color: appTheme.whiteA700,
    border: Border.all(
      color: theme.colorScheme.primary,
      width: 5.h,
    ),
  );
  static BoxDecoration outlinedSmallerPrimary = BoxDecoration(
    color: appTheme.whiteA700,
    border: Border.all(
      color: theme.colorScheme.primary,
      width: 2.h,
    ),
  );
  static BoxDecoration outlinedSmallestPrimary = BoxDecoration(
    color: appTheme.whiteA700,
    border: Border.all(
      color: theme.colorScheme.primary,
      width: 1.h,
    ),
  );
  static BoxDecoration outlinedSmallPrimary = BoxDecoration(
    color: appTheme.whiteA700,
    border: Border.all(
      color: theme.colorScheme.primary,
      width: 3.h,
    ),
  );
  static BoxDecoration outlineSecondaryContainer = BoxDecoration(
    color: appTheme.whiteA700,
    boxShadow: [
      BoxShadow(
        color: theme.colorScheme.secondaryContainer,
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, 4),
      )
    ]
  );
  // White decorations
  static BoxDecoration white = BoxDecoration(
    color: appTheme.whiteA700,
    border: Border.all(
      color: appTheme.gray300,
      width: 1.h,
    ),
    boxShadow: [
      BoxShadow(
        color: theme.colorScheme.secondaryContainer.withOpacity(0.15),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: const Offset(0, 4),
      )
    ],
  );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder50 => BorderRadius.circular(50.h);
  static BorderRadius get circleBorder99 => BorderRadius.circular(99.h);
  // Rounded borders
  static BorderRadius get roundedBorder15 => BorderRadius.circular(15.h);
  static BorderRadius get roundedBorder20 => BorderRadius.circular(20.h);
  static BorderRadius get roundedBorder30 => BorderRadius.circular(30.h);
  static BorderRadius get roundedBorder46 => BorderRadius.circular(45.h);
}
