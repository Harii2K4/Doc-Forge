import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume_builder_app/screens/options/text_field_theme.dart';
import 'elevated_button_theme.dart';
import 'outline_button_theme.dart';


import 'text_theme.dart';

class ResumeAppTheme{
  ResumeAppTheme._();

  static ThemeData lightTheme =ThemeData( brightness: Brightness.light,
    textTheme:ResumeTextTheme.lightTextTheme  ,
    outlinedButtonTheme:lightOutlinedButtonTheme,
    elevatedButtonTheme: lightElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,


  );
  static ThemeData darkTheme=ThemeData(brightness: Brightness.dark,
    textTheme:ResumeTextTheme.darkTextTheme,
    outlinedButtonTheme:darkOutlinedButtonTheme,
    elevatedButtonTheme:darkElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );

}