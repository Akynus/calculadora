import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

extension ColorThemeExtension on Color {
  Color get textColor {
    return computeLuminance() > 0.5 ? Colors.black : Colors.white;
  }

  MaterialColor get toMaterialColor {
    Map<int, Color> map = {
      50: Color.fromRGBO(red, green, blue, .1),
      100: Color.fromRGBO(red, green, blue, .2),
      200: Color.fromRGBO(red, green, blue, .3),
      300: Color.fromRGBO(red, green, blue, .4),
      400: Color.fromRGBO(red, green, blue, .5),
      500: Color.fromRGBO(red, green, blue, .6),
      600: Color.fromRGBO(red, green, blue, .7),
      700: Color.fromRGBO(red, green, blue, .8),
      800: Color.fromRGBO(red, green, blue, .9),
      900: Color.fromRGBO(red, green, blue, 1),
    };

    return MaterialColor(value, map);
  }
}

const primaryColor = Colors.indigo;
final primaryColorLight = const Color(0xFFDCE3EB).toMaterialColor;
final primaryColorDark = const Color(0xFF092437).toMaterialColor;

TextTheme get textTheme {
  return const TextTheme(
    bodyText2: TextStyle(fontSize: 35, fontWeight: FontWeight.w300),
  );
}

ThemeData get theme {
  return ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    primarySwatch: primaryColorLight,
    textTheme: textTheme,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: Colors.transparent,
      elevation: 0,
      //titleTextStyle: TextStyle(fontWeight: FontWeight.w500, color: Colors.black54),
      systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    ),
  );
}

ThemeData get themeDark {
  return ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    primarySwatch: primaryColorDark,
    textTheme: textTheme,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: Colors.transparent,
      elevation: 0,
      //titleTextStyle: TextStyle(fontWeight: FontWeight.w400),
      systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    ),
  );
}
