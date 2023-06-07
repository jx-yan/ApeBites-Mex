import 'package:apebites_mex/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:apebites_mex/styles/styles.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:timezone/timezone.dart';
import 'package:timezone/data/latest.dart' as tz;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  tz.initializeTimeZones();
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
      routes: [
        GoRoute(
            path: 'home',
            builder: (BuildContext context, GoRouterState state) {
              return const HomeScreen();
            },
            routes: [
              GoRoute(
                path: 'reservations',
                builder: (BuildContext context, GoRouterState state) {
                  return const ReservationsScreen();
                },
              ),
              GoRoute(
                path: 'sales',
                builder: (BuildContext context, GoRouterState state) {
                  return const SalesScreen();
                },
              ),
            ]),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'Apebites Mex';

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'SG'),
      ],
      locale: const Locale('en', 'SG'),
      debugShowCheckedModeBanner: false,
      builder: (context, child) => ColorfulSafeArea(
          overflowRules: const OverflowRules.symmetric(vertical: true),
          child: child!),
      title: _title,
      routerConfig: _router,
      theme: ThemeData(
        useMaterial3: false,
        scaffoldBackgroundColor: Colors.white,
        primaryColor: kPrimaryDefault,
        primaryColorLight: kPrimarySoft,
        primaryColorDark: kPrimaryBoldest,
        fontFamily: 'Lexend',
        textTheme: apeBitesTextTheme,
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
