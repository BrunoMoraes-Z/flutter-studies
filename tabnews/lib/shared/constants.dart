import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kTabNewsBaseUrl = 'https://www.tabnews.com.br/api/v1';
const int pageSize = 30;
const kGrey900 = Color(0xFF24292F);
const kLightGrey = Color(0xFFD0D7DE);
const kGreen = Color(0xFF2C974B);

var kInputDecorationTheme = const InputDecorationTheme(
  border: InputBorder.none,
  errorBorder: InputBorder.none,
  enabledBorder: InputBorder.none,
  focusedBorder: InputBorder.none,
  disabledBorder: InputBorder.none,
  focusedErrorBorder: InputBorder.none,
  contentPadding: EdgeInsets.symmetric(horizontal: 8),
);

var kLightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blue,
  ),
  inputDecorationTheme: kInputDecorationTheme,
  textTheme: GoogleFonts.ubuntuTextTheme(),
);

var kDarkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: kGrey900,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: Colors.blue,
  ),
  inputDecorationTheme: kInputDecorationTheme,
  textTheme: GoogleFonts.ubuntuTextTheme(ThemeData.dark().textTheme),
);
