import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class ElevatedButtonTheme{
  ElevatedButtonTheme._();
}

final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape:RoundedRectangleBorder(),
      foregroundColor:whiteColor,
      backgroundColor:secondaryColor ,
      side:BorderSide(color:secondaryColor),
      padding: EdgeInsets.symmetric(vertical: buttonHeight),
    )
);

final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape:RoundedRectangleBorder(),
      foregroundColor:secondaryColor,
      backgroundColor:whiteColor ,
      side:BorderSide(color:secondaryColor),
      padding: EdgeInsets.symmetric(vertical: buttonHeight),
    )
);