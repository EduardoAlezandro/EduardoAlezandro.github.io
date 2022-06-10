import 'package:app_eduardo/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

const Color customMagenta50 = Color.fromARGB(255, 206, 210, 252);
const Color customMagenta100 = Color.fromARGB(255, 157, 186, 250);
const Color customMagenta300 = Color(0xff32EDF4);
const Color customMagenta400 = Color(0xff000000);

const Color blueSoloLeving = Color(0xff0A1978);
const Color customMagenta600 = Color(0xff6BB8E7);

const Color customErrorRed = Color(0xFFC5032B);

const Color customSurfaceWhite = Color(0xFFA8F5F4);
const Color customBackgroundWhite = Color(0xffA8F5F4);
const Color customBackgroundDark = Color.fromARGB(0, 49, 49, 51);
const Color font = Color(0xffE6CA76);

void main() {
  runApp(GetMaterialApp(
    localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: [
      const Locale('pt', 'BR'),
    ],
    theme: ThemeData(
      colorScheme: _customColorSchemeLight,
    ),
    darkTheme: ThemeData(colorScheme: _customColorSchemeDark),
    themeMode: ThemeMode.dark,
    title: 'Portfolio',
    initialRoute: AppPages.INITIAL,
    getPages: AppPages.routes,
    transitionDuration: const Duration(seconds: 0),
  ));
}

const ColorScheme _customColorSchemeLight = ColorScheme(
  primary: blueSoloLeving,
  secondary: blueSoloLeving,
  surface: customMagenta300,
  background: customSurfaceWhite,
  error: blueSoloLeving,
  onPrimary: font,
  onSecondary: font,
  onSurface: customMagenta300,
  onBackground: customMagenta100,
  onError: blueSoloLeving,
  brightness: Brightness.light,
);

const ColorScheme _customColorSchemeDark = ColorScheme(
  primary: customMagenta400,
  secondary: customMagenta400,
  surface: customMagenta400,
  background: customSurfaceWhite,
  error: blueSoloLeving,
  onPrimary: font,
  onSecondary: font,
  onSurface: font,
  onBackground: customMagenta100,
  onError: customMagenta400,
  brightness: Brightness.dark,
);
