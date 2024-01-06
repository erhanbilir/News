import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: HexColor('E0E0E0'), //Background için
    primary: HexColor('E62C33'), //primary
    secondary: HexColor('FFFFFF'), //secondary için
    tertiary: HexColor('E62C33'),
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: HexColor('141414'), //Background için
    primary: HexColor('292C33'), //primary
    secondary: HexColor('292C33'), //secondary için
    tertiary: HexColor('E62C33'),
  ),
);
