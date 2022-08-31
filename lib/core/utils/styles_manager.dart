import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/core/utils/constants_manager.dart';

import 'fonts_manager.dart';


TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color,String fonfamily) {
  return GoogleFonts.getFont('$fonfamily',
    textStyle: TextStyle(
      fontSize: fontSize,fontWeight:fontWeight,color: color
    )
  );
}

// regular style
TextStyle getRegularStyle({double fontSize = FontSize.s12, required Color color,required String fontfamily}) {
  return _getTextStyle(fontSize, FontWeightManager.regular, color,fontfamily);
}

//light
TextStyle getLightStyle({double fontSize = FontSize.s12, required Color color,required String fontfamily}) {
  return _getTextStyle(fontSize, FontWeightManager.light, color,fontfamily);
} 

// meduim style
TextStyle getMeduimStyle({double fontSize = FontSize.s12, required Color color,required String fontfamily}) {
  return _getTextStyle(fontSize, FontWeightManager.meduim, color,fontfamily);
}

// bold style
TextStyle getBoldStyle({required double fontSize , required Color color, required String fontfamily}) {
  return _getTextStyle(fontSize, FontWeightManager.bold, color,fontfamily);
}

// semibold style
TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s14, required Color color,required String fontfamily}) {
  return _getTextStyle(fontSize, FontWeightManager.semiBold, color,fontfamily);
}
