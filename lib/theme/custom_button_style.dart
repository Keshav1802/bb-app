import 'dart:ui';
import 'package:bb_app/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlack900 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.black900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            4,
          ),
        ),
      );
  static ButtonStyle get fillBlack900TL16 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.black900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
      );
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
      );
  // Outline button style
  static ButtonStyle get outlinePrimary => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
