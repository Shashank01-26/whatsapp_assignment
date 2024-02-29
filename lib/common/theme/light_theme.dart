import 'package:chatzo/common/extension/custom_theme_extension.dart';
import 'package:chatzo/common/utils/colors.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    backgroundColor: Coloors.backgroundLight,
    scaffoldBackgroundColor: Coloors.backgroundLight,
    extensions: [
      CustomThemeExtension.lightMode,
    ],
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: Coloors.greyLight,
          foregroundColor: Coloors.backgroundLight,
          splashFactory: NoSplash.splashFactory,
          elevation: 2,
          shadowColor: Colors.transparent,
      ),
    ),
     bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Coloors.backgroundLight,
      modalBackgroundColor: Coloors.backgroundLight,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(40),
        )
      ),
    ),    
  );
}
