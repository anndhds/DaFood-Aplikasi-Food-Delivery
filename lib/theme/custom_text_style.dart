import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmallMontserratBluegray900b5 =>
      theme.textTheme.bodySmall!.montserrat.copyWith(
        color: appTheme.blueGray900B5,
      );
  // Display text style
  static get displayMediumOnSecondaryContainer =>
      theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontSize: 43.fSize,
      );
  // Headline text style
  static get headlineLargeOnSecondaryContainer =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
      );
  static get headlineLargeOnSecondaryContainerMedium =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontSize: 32.fSize,
        fontWeight: FontWeight.w500,
      );
  static get headlineLargeRed30001 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.red30001,
      );
  static get headlineSmallMedium => theme.textTheme.headlineSmall!.copyWith(
        fontSize: 24.fSize,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallPrimary_1 => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  // Label text style
  static get labelLargeOnSecondaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(0.85),
        fontWeight: FontWeight.w500,
      );
  static get labelMediumOnSecondaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get labelMediumOrange500 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.orange500,
      );
  static get labelMediumOrange700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.orange700,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.7),
        fontSize: 11.fSize,
      );
  static get labelMediumSemiBold => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get titleLargePrimaryMedium => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.7),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnSecondaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnSecondaryContainer16 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontSize: 16.fSize,
      );
  static get titleMediumOnSecondaryContainer17 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontSize: 17.fSize,
      );
  static get titleMediumOnSecondaryContainerMedium =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(0.85),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnSecondaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 15.fSize,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get yuGothicUI {
    return copyWith(
      fontFamily: 'Yu Gothic UI',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }
}
