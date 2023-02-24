

import 'package:advance_flutter/presentation/resources/color_manager.dart';
import 'package:advance_flutter/presentation/resources/font_manager.dart';
import 'package:advance_flutter/presentation/resources/styles_manager.dart';

import 'package:advance_flutter/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme(){
  return ThemeData(
    //main color theme
    primaryColor: ColorManage.primary,
    primaryColorLight: ColorManage.lightPrimary,
    primaryColorDark: ColorManage.darkPrimary,
    disabledColor:  ColorManage.gray1,
    splashColor: ColorManage.lightPrimary,//ripple effect color
      //cardViews theme
    cardTheme:  CardTheme(
      color: ColorManage.white,

      shadowColor: ColorManage.grey,
      elevation: AppSize.s4

    ),
    //app bar theme
   appBarTheme: AppBarTheme(
     centerTitle: true,
     color: ColorManage.primary,
     elevation: AppSize.s4
      ,shadowColor: ColorManage.lightPrimary,
     titleTextStyle: getRegularStyle(fontSize: FontSize.s16,
         color: ColorManage.white)
   ),


    //button theme
   buttonTheme: ButtonThemeData(
      shape:const StadiumBorder(),
     disabledColor: ColorManage.gray1,
     buttonColor: ColorManage.primary,
     splashColor: ColorManage.lightPrimary,

  ),
  //elevated button them
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(color: ColorManage.white,fontSize: FontSize.s17),
        backgroundColor: ColorManage.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12)
        ),
      ),
    ),
    //Text theme
    textTheme: TextTheme(
      displayLarge: getLightStyle(color: ColorManage.white,fontSize: FontSize.s22),
      displayMedium:getSamiBoldStyle(color: ColorManage.darkGray,fontSize: FontSize.s16),
      titleMedium: getMediumStyle(color: ColorManage.lightGrey,fontSize:  FontSize.s14),
      bodySmall: getRegularStyle(color:ColorManage.gray1,)
     ,bodyLarge:getRegularStyle(color: ColorManage.grey)
    ),
    //input decoration theme (text form  filed)
    inputDecorationTheme: InputDecorationTheme(
      //content padding
      contentPadding:const EdgeInsets.all(AppPadding.p8),
      hintStyle:getRegularStyle(color: ColorManage.grey,fontSize: FontSize.s14),
      labelStyle: getMediumStyle(color: ColorManage.grey,fontSize: FontSize.s14),
      errorStyle: getRegularStyle(color: ColorManage.red),
      enabledBorder: OutlineInputBorder(
        borderSide:BorderSide(
          color: ColorManage.grey,
          width: AppSize.s1_5,
          
        ),
        borderRadius:const BorderRadius.all(Radius.circular(AppSize.s8))
      ),
      focusedBorder:  OutlineInputBorder(
               borderSide:BorderSide(
               color: ColorManage.grey,
               width: AppSize.s1_5,

  ),
      )  ,
      errorBorder: OutlineInputBorder(
      borderSide:BorderSide(
  color: ColorManage.red,
  width: AppSize.s1_5,

  ) ),
      focusedErrorBorder: OutlineInputBorder(
          borderSide:BorderSide(
            color: ColorManage.primary,
            width: AppSize.s1_5,

          ) ),
    )
  );
}