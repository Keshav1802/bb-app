import 'package:flutter/material.dart';
import 'package:bb_app/core/app_export.dart';
import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color lightBlueA100 = fromHex('#7bdbfc');
  static Color gray700 = fromHex('#5a5a5a');
  static Color gray5001 = fromHex('#fdedff');

  static Color red800 = fromHex('#bb2929');

  static Color purple90000 = fromHex('#0064236a');

  static Color black9003f = fromHex('#3f000000');

  static Color green600 = fromHex('#2faa50');

  static Color gray50 = fromHex('#fbf6fb');

  static Color black900 = fromHex('#000000');

  static Color purple30001 = fromHex('#b07fb4');

  static Color teal700 = fromHex('#038950');

  static Color gray50001 = fromHex('#919191');

  static Color yellow900 = fromHex('#fa8f21');

  static Color purple900 = fromHex('#65236a');

  static Color gray20001 = fromHex('#ebebeb');

  static Color gray50003 = fromHex('#959595');

  static Color gray50002 = fromHex('#929192');

  static Color purple700 = fromHex('#833d89');

  static Color blueGray900 = fromHex('#353535');

  static Color redA700 = fromHex('#f70000');

  static Color purple300 = fromHex('#bc76c1');

  static Color purple50 = fromHex('#efe2f0');

  static Color black90026 = fromHex('#26000000');

  static Color purple400 = fromHex('#905195');

  static Color gray600 = fromHex('#818181');

  static Color black900A2 = fromHex('#a2000000');

  static Color gray400 = fromHex('#b3b3b3');

  static Color gray500 = fromHex('#939393');

  static Color blueGray100 = fromHex('#d1d1d1');

  static Color blue700 = fromHex('#0c72d1');

  static Color blueGray400 = fromHex('#898989');

  static Color gray800 = fromHex('#414141');

  static Color gray200 = fromHex('#e7e7e7');

  static Color gray40005 = fromHex('#b9b9b9');

  static Color gray40006 = fromHex('#bbbbbb');

  static Color black90033 = fromHex('#33000000');

  static Color gray40001 = fromHex('#b4b4b4');

  static Color gray40002 = fromHex('#c2c2c2');

  static Color bluegray400 = fromHex('#888888');

  static Color gray40003 = fromHex('#c4c4c4');

  static Color purple5001 = fromHex('#efe3f0');

  static Color gray40004 = fromHex('#b7b7b7');

  static Color purple9004c = fromHex('#4c65236a');

  static Color green60002 = fromHex('#2aa24a');

  static Color gray40000 = fromHex('#00c4c4c4');

  static Color black90019 = fromHex('#19000000');

  static Color purple900A2 = fromHex('#a265236a');

  static Color green60001 = fromHex('#34a853');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class AppDecoration {
  static BoxDecoration get fill => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );

  static BoxDecoration get outlineBlack90026 => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90026,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              2,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get txtPink => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: appTheme.yellow70023,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
      );
  static BoxDecoration get outline => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: getHorizontalSize(
            1,
          ),
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get txtFill => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get txtGrey => BoxDecoration(
        border: Border.all(
          color: appTheme.gray50001,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get pink => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get txtBlack => BoxDecoration(
        border: Border.all(
          color: appTheme.black900,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get outline1 => BoxDecoration(
        border: Border.all(
          color: appTheme.black900,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get txtWhite => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );
  static BoxDecoration get fill1 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.39),
      );
  static BoxDecoration get fill2 => BoxDecoration(
        color: theme.colorScheme.inverseSurface,
      );
  static BoxDecoration get txtOutline => BoxDecoration(
        color: theme.colorScheme.primaryContainer.withOpacity(0.46),
        border: Border.all(
          color: appTheme.gray300.withOpacity(0.46),
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get grey =>
      BoxDecoration(color: Color(0xff9E9EA3).withOpacity(0.1));
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16,
    ),
  );

  static BorderRadius roundedBorder36 = BorderRadius.circular(
    getHorizontalSize(
      36,
    ),
  );

  static BorderRadius roundedBorder26 = BorderRadius.circular(
    getHorizontalSize(
      26,
    ),
  );

  static BorderRadius roundedBorder23 = BorderRadius.circular(
    getHorizontalSize(
      23,
    ),
  );

  static BorderRadius circleBorder42 = BorderRadius.circular(
    getHorizontalSize(
      42,
    ),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10,
    ),
  );

  static BorderRadius roundedBorder119 = BorderRadius.circular(
    getHorizontalSize(
      119,
    ),
  );

  static BorderRadius circleBorder50 = BorderRadius.circular(
    getHorizontalSize(
      50,
    ),
  );

  static BorderRadius txtRoundedBorder2 = BorderRadius.circular(
    getHorizontalSize(
      2,
    ),
  );

  static BorderRadius txtRoundedBorder14 = BorderRadius.circular(
    getHorizontalSize(
      14,
    ),
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
