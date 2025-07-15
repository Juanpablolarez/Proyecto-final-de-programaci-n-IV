import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme = ThemeData(
  colorScheme: ColorScheme.light(
    primary: AppColors.primary,
    secondary: AppColors.secondary,
    background: AppColors.secondary,
    onPrimary: AppColors.text,
  ),
  textTheme: GoogleFonts.montserratTextTheme(),
  scaffoldBackgroundColor: AppColors.secondary,
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.primary,
    iconTheme: IconThemeData(color: AppColors.text),
    titleTextStyle: GoogleFonts.agrandirGrand(
      color: AppColors.text, fontSize: 24, fontWeight: FontWeight.bold),
  ),
);