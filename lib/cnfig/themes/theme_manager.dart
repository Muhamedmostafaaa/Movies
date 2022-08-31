import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/core/utils/colors_manager.dart';
import 'package:movies_app/core/utils/fonts_manager.dart';
import 'package:movies_app/core/utils/styles_manager.dart';
import 'package:movies_app/core/utils/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(

      /// MAIN COLORS
      primaryColor: ColorManager.primaryColor,

      ///BOTTOM NAVIGATION BAR
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedIconTheme:
              IconThemeData(color: ColorManager.selectedIconColor),
          backgroundColor: ColorManager.bottomNavColor,
          selectedItemColor: ColorManager.selectedIconColor,
          unselectedItemColor: ColorManager.unSelectedIconColor,
          elevation: AppSize.s20,
          selectedLabelStyle: GoogleFonts.getFont(FontConstans.fontFamily1,
              fontSize: FontSize.s8, fontWeight: FontWeightManager.bold),
unselectedLabelStyle:GoogleFonts.getFont(FontConstans.fontFamily1,
    fontSize: FontSize.s8, fontWeight: FontWeightManager.bold) ,      ),

      ///APP BAR
      appBarTheme: AppBarTheme(
        backgroundColor: ColorManager.appBarColor,
        elevation: AppSize.s0,
      ),

      /// SCAFOLD
      scaffoldBackgroundColor: ColorManager.primaryColor,

      ///TEXT THEME
      textTheme: TextTheme(
          displayMedium: getBoldStyle(
              fontSize: FontSize.s15,
              color: ColorManager.white,
              fontfamily: FontConstans.fontFamily1),
          headlineMedium: getSemiBoldStyle(
              color: ColorManager.white, fontfamily: FontConstans.fontFamily2),
          displaySmall: getRegularStyle(
              color: ColorManager.white, fontfamily: FontConstans.fontFamily3),
          labelSmall: getBoldStyle(
              fontSize: FontSize.s8,
              color: ColorManager.white,
              fontfamily: FontConstans.fontFamily1),
          bodySmall: getMeduimStyle(
              color: ColorManager.releaseDate,
              fontfamily: FontConstans.fontFamily1),labelMedium: getRegularStyle(color: ColorManager.white, fontfamily: FontConstans.fontFamily1)
      ),

  );
}
