// import 'package:ios_app/components/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:ios_app/components/app_colors.dart';

class AppThemes {
  static ThemeData get lightTheme => ThemeData(
        primarySwatch: AppColors.primaryMeterialColor,
        fontFamily: 'GmarketSansTTF',
        scaffoldBackgroundColor: Colors.white, //백그라운드 깔리는 게 회색빛이라 하얗게..
        splashColor: Colors.white, // 클릭했을 때 나오는 컬러
        textTheme: _textTheme,
        appBarTheme: _appBarTheme,
        brightness: Brightness.light, //light가 디폴트인데, dart로 바꾸면 대비가 생김
      );
  static ThemeData get darkTheme => ThemeData(
        primarySwatch: AppColors.primaryMeterialColor,
        fontFamily: 'GmarketSansTTF',
        //백그라운드 지워줌
        splashColor: Colors.white, // 클릭했을 때 나오는 컬러
        textTheme: _textTheme,
        brightness: Brightness.dark, //light가 디폴트인데, dart로 바꾸면 대비가 생김
      );

  static const AppBarTheme _appBarTheme = AppBarTheme(
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(
      color: AppColors.primaryColor,
    ),
    elevation: 0,
  );

  static const TextTheme _textTheme = TextTheme(
    headline4: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w400,
    ),
    subtitle1: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
    subtitle2: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    bodyText1: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w300,
    ),
    bodyText2: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w300,
    ),
    button: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w300,
    ),
  );
}