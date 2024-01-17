import 'package:flutter/material.dart';
import 'package:anandafood_app/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillRedA => BoxDecoration(
        color: appTheme.redA100,
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal200,
      );
  static BoxDecoration get fillYellow => BoxDecoration(
        color: appTheme.yellow100,
      );

  // Outline decorations
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.amber400,
        border: Border.all(
          color: appTheme.gray50,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnSecondaryContainer => BoxDecoration(
        color: appTheme.teal20001,
        border: Border.all(
          color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnSecondaryContainer1 => BoxDecoration(
        color: appTheme.lime100,
        border: Border.all(
          color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              4,
              7,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnSecondaryContainer2 => BoxDecoration(
        color: appTheme.teal10002,
        border: Border.all(
          color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              4,
              7,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnSecondaryContainer3 => BoxDecoration(
        color: appTheme.pink200,
        border: Border.all(
          color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              4,
              7,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnSecondaryContainer4 => BoxDecoration(
        color: appTheme.red200,
        border: Border.all(
          color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              4,
              7,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnSecondaryContainer5 => BoxDecoration(
        color: theme.colorScheme.onError,
        border: Border.all(
          color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              6,
              9,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary => BoxDecoration();
  static BoxDecoration get outlineRedA => BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(0.7),
        border: Border.all(
          color: appTheme.redA400,
          width: 1.h,
        ),
      );

  // Column decorations
  static BoxDecoration get column3 => BoxDecoration();
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder10 => BorderRadius.circular(
        10.h,
      );

  // Custom borders
  static BorderRadius get customBorderTL20 => BorderRadius.vertical(
        top: Radius.circular(20.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get roundedBorder2 => BorderRadius.circular(
        2.h,
      );
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
        30.h,
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
