import 'dart:ui';
import 'package:anandafood_app/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Outline button style
  static ButtonStyle get outlineOnSecondaryContainerTL10 =>
      OutlinedButton.styleFrom(
        backgroundColor: appTheme.redA10001,
        side: BorderSide(
          color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get outlineOnSecondaryContainerTL101 =>
      OutlinedButton.styleFrom(
        backgroundColor: appTheme.red20001,
        side: BorderSide(
          color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
