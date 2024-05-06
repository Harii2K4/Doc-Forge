import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResumeTextTheme{
  static TextTheme lightTextTheme=TextTheme(
      headlineSmall: GoogleFonts.montserrat(
        color:Colors.black87,
      ),
      headlineLarge: GoogleFonts.montserrat(
        color:Colors.black87,
      ),
      headlineMedium: GoogleFonts.montserrat(
        color:Colors.black87,
      ),
      bodyLarge: GoogleFonts.poppins(color:Colors.black87,fontSize:24) ,
      bodyMedium: GoogleFonts.poppins(color:Colors.black87,fontSize:24),
      bodySmall: GoogleFonts.poppins(color:Colors.black87,fontSize:24)

  );
  static TextTheme darkTextTheme=TextTheme(
      headlineSmall: GoogleFonts.montserrat(
        color:Colors.white70,
      ),
      headlineLarge: GoogleFonts.montserrat(
        color:Colors.white70,
      ),
      headlineMedium: GoogleFonts.montserrat(
        color:Colors.white70,
      ),
      bodyLarge: GoogleFonts.poppins(color:Colors.white70,fontSize:24),
      bodyMedium: GoogleFonts.poppins(color:Colors.white70,fontSize:24),
      bodySmall: GoogleFonts.poppins(color:Colors.white70,fontSize:24)




  );

}