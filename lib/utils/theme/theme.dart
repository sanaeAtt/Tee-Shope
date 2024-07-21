import 'package:e_commerce_app/utils/theme/custums_themes/appBarTheme.dart';
import 'package:e_commerce_app/utils/theme/custums_themes/bottomSheetTheme.dart';
import 'package:e_commerce_app/utils/theme/custums_themes/checkboxTheme.dart';
import 'package:e_commerce_app/utils/theme/custums_themes/outlinedBtn.dart';
import 'package:e_commerce_app/utils/theme/custums_themes/textFieldTheme.dart';
import 'package:e_commerce_app/utils/theme/custums_themes/textTheme.dart';
import 'package:e_commerce_app/utils/theme/custums_themes/elevatButonTheme.dart';
import 'package:e_commerce_app/utils/theme/custums_themes/chipTheme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    chipTheme: Chiptheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: Appbartheme.lightAppBarTheme,
    checkboxTheme: Checkboxtheme.lightCheckboxTheme,
    bottomSheetTheme: Bottomsheettheme.lightBottomSheetTheme,
    outlinedButtonTheme: Outlinedbtn.lightOutlinedButtonTheme,
    textTheme: TtextTheme.lightTextTheme,
    elevatedButtonTheme: ElevatBtnTheme.lightElevatBtnTheme,
    inputDecorationTheme: Textfieldtheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    chipTheme: Chiptheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: Appbartheme.lightAppBarTheme,
    checkboxTheme: Checkboxtheme.darkCheckboxTheme,
    inputDecorationTheme: Textfieldtheme.darkInputDecorationTheme,
    bottomSheetTheme: Bottomsheettheme.lightBottomSheetTheme,
    textTheme: TtextTheme.darkTextTheme,
    outlinedButtonTheme: Outlinedbtn.darkOutlinedButtonTheme,
    elevatedButtonTheme: ElevatBtnTheme.darkElevatBtnTheme,
  );
}
