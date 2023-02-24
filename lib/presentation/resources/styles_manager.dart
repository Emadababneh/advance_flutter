import 'package:flutter/material.dart';

import 'font_manager.dart';



TextStyle _getTextStyle(double fontSize,FontWeight fontWeight, Color color){
  return TextStyle(
    fontSize: fontSize,
    fontFamily: FontManager.fontFamily,
    color: color,
    fontWeight: fontWeight
  );
}

// regular Style
TextStyle getRegularStyle(
{double fontSize=FontSize.s12,
 required Color color

}
    ){
 return  _getTextStyle(fontSize, FontWeightManager.regular,color);
}

//medium style
TextStyle getMediumStyle({
  double fontSize=FontSize.s14,
  required Color color
}){
  return  _getTextStyle(fontSize, FontWeightManager.regular,color);
}
//Light style
TextStyle getLightStyle({
  double fontSize=FontSize.s18,
  required Color color
}){
  return  _getTextStyle(fontSize, FontWeightManager.light,color);
}

//Bold style
TextStyle getBoldStyle({
  double fontSize=FontSize.s20,
  required Color color
}){
  return  _getTextStyle(fontSize, FontWeightManager.bold,color);
}
//samiBold
TextStyle getSamiBoldStyle({
  double fontSize=FontSize.s22,
  required Color color
}){
  return  _getTextStyle(fontSize, FontWeightManager.semiBold,color);
}
