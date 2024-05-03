import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900Light => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeGray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray400,
      );
  static get bodySmallGray50001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50001,
      );
  static get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodySmallPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodyMediumGray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray400,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmallPrimaryContainer10 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodyMediumGray400Light => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray400,
        fontWeight: FontWeight.w300,
      );
  // Headline text style
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get rubik {
    return copyWith(
      fontFamily: 'Rubik',
    );
  }
}
