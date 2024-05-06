import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class OutlinedButtonTheme{
  OutlinedButtonTheme._();
}

final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape:RoundedRectangleBorder(),
      foregroundColor:secondaryColor,
      side:BorderSide(color:secondaryColor),
      padding: EdgeInsets.symmetric(vertical: buttonHeight),
    )
);

final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape:RoundedRectangleBorder(),
      foregroundColor:whiteColor,
      side:BorderSide(color:whiteColor),
      padding: EdgeInsets.symmetric(vertical: buttonHeight),
    )
);