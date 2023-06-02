import 'package:flutter/material.dart';
import 'custom_colors.dart';

TextTheme apeBitesTextTheme = TextTheme(
  displayLarge:  myDisplayLarge,
  displayMedium: myDisplayMedium,
  displaySmall: myDisplaySmall,
  headlineLarge: myHeadlineLarge,
  headlineMedium: myHeadlineMedium,
  headlineSmall: myHeadlineSmall,
  titleLarge: myTitleLarge,
  titleMedium: myTitleMedium,
  titleSmall: myTitleSmall,
  bodyLarge: myBodyLarge,
  bodyMedium: myBodyMedium,
  bodySmall: myBodySmall,
);

TextStyle myDisplayLarge = const TextStyle(
  fontSize: 48,
  fontWeight: FontWeight.w700,
  color: kPrimaryBoldest,
);

TextStyle myDisplayMedium = const TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.w700,
  color: kPrimaryBoldest,
);

TextStyle myDisplaySmall = const TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.w700,
  color: kPrimaryBoldest,
);

TextStyle myHeadlineLarge = const TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.w600,
  color: kFontColorDefault,
);

TextStyle myHeadlineMedium = const TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w600,
  color: kFontColorDefault,
);

TextStyle myHeadlineSmall = const TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w600,
  color: kFontColorDefault,
);

TextStyle myTitleLarge = const TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w700,
  color: kPrimaryBoldest,
);

TextStyle myTitleMedium = const TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w700,
  color: kPrimaryBoldest,
);

TextStyle myTitleSmall = const TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w700,
  color: kPrimaryBoldest,
);

TextStyle myBodyLarge = const TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w400,
  color: kFontColorDefault,
);

TextStyle myBodyMedium = const TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: kFontColorDefault,
);

TextStyle myBodySmall = const TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  color: kFontColorDefault,
);