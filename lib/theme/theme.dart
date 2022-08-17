import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inoculate/utils/app_screen_utils.dart';

class AppTheme {
  static ThemeData get theTheme {
    return ThemeData(
        //! GENERAL PAGE TRANSITIONS
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.android: ZoomPageTransitionsBuilder()
        }),

        //! COLOURS
        backgroundColor: AppThemeColours.backgroundColour,
        scaffoldBackgroundColor: AppThemeColours.scaffoldBackgroundColour,
        shadowColor: AppThemeColours.shadowColour,

        //! COLOUR SCHEMES
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: AppThemeColours.primaryColour,
            secondary: AppThemeColours.secondaryColour,
            tertiary: AppThemeColours.tertiaryColour,
            shadow: AppThemeColours.shadowColour),

        //! SNACK BAR THEME
        snackBarTheme: SnackBarThemeData(
            elevation: 8.0,
            backgroundColor: AppThemeColours.snackbarBackgroundColour,
            contentTextStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                color: AppThemeColours.textColourPrimary,
                fontSize: 12.0),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21.0),
                    topRight: Radius.circular(21.0)))),

        //! TEXT
        textTheme: TextTheme(
            headline2: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 28.0,
                color: AppThemeColours.textColourPrimary),
            bodyText1: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                color: AppThemeColours.textColourPrimary,
                fontSize: 14.0),
            bodyText2: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                color: AppThemeColours.textColourPrimary,
                fontSize: 12.0)),

        //! ELEVATED BUTTON
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                padding: AppScreenUtils.elevatedButtonDefaultPadding,
                primary: AppThemeColours.elevatedButtonBackgroundColour,
                textStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    color: AppThemeColours.textColourPrimary,
                    fontSize: 12.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)))),

        //! TEXT BUTTON
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
                padding: AppScreenUtils.containerPaddingSmall,
                textStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    color: AppThemeColours.textColourPrimary,
                    fontSize: 16.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)))),

        //! INPUT DECORATION
        inputDecorationTheme: InputDecorationTheme(
            contentPadding: AppScreenUtils.textFormFieldDefaultPadding,
            filled: true,
            fillColor: AppThemeColours.tertiaryColour.withOpacity(0.2),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
            focusColor: AppThemeColours.focusedTextFormFieldColour,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1.2,
                    color: AppThemeColours.focusedTextFormFieldColour),
                borderRadius: BorderRadius.circular(21.0)),
            labelStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                color: AppThemeColours.secondaryColour.withOpacity(0.8),
                fontSize: 12.0),
            hintStyle: GoogleFonts.poppins(fontWeight: FontWeight.w400, color: AppThemeColours.secondaryColour.withOpacity(0.8), fontSize: 12.0)));
  }
}

//! THEME COLOURS.
abstract class AppThemeColours {
  //! MAIN COLOUR
  static Color primaryColour = const Color(0xFF6B8CE8);
  static Color secondaryColour = const Color(0xFF0B1A47);
  static Color tertiaryColour = Colors.white;

  //! BACKGROUND COLOURS
  static Color backgroundColour = const Color(0xFFE7ECF6);
  static Color scaffoldBackgroundColour = const Color(0xFFE7ECF6);

  //! SHADOW COLOUR
  static Color shadowColour =
      const Color(0xFF0B29EF).withOpacity(0.3); // const Color(0xFFA0A9DA);

  //! TEXT COLOURS
  static Color textColourPrimary = Colors.white;
  static Color textColourSecondary =
      const Color(0xFF648CE8); // const Color(0xFF5165e4);

  static Color lettersAndIconsFaintColour = const Color(0xFF565759);
  static Color focusedTextFormFieldColour = const Color(0xFFFEA742);

  //! ELEVATED BUTTON AND CONTAINERS
  static Color elevatedButtonBackgroundColour = const Color(0xFFFEA742);
  static Color containersBackgroundColourPrimary = Colors.white;
  static Color containersBackgroundColourSecondary = const Color(0xFF273EBD);

  //! SNACK BAR
  static Color snackbarBackgroundColour = const Color(0xFF0D0811);
}
