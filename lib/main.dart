import 'package:apebites_mex/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:apebites_mex/styles/styles.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'Apebites Mex';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) => ColorfulSafeArea(
          overflowRules: const OverflowRules.symmetric(vertical: true),
          child: child!),
      title: _title,
      home: const LoginScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: kPrimaryDefault,
        primaryColorLight: kPrimarySoft,
        primaryColorDark: kPrimaryBoldest,
        fontFamily: 'Lexend',
        textTheme: apeBitesTextTheme.apply(
          bodyColor: kFontColorDefault,
          displayColor: kPrimaryBoldest,
        ),
        buttonTheme: ButtonThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(48),
          ),
          height: 48,
        ),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(primary: kPrimaryDefault, secondary: kSecondaryDefault),
      ),
    );
  }
}
