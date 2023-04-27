import 'package:flutter/material.dart';
import 'package:fsp_russia_app/navigation/router.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final Color primaryColor = Color(0xFF0253FC);
final Color darkPrimaryColor = Color(0xFF01071D);
final Color accentColor = Color(0xFF4C9DFF);
final Color backgroundColor = Color(0xFF132A4A);
final Color secondaryBackgroundColor = Color(0xFF0A2552);

class SportApp extends StatelessWidget {
  SportApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // theme: ThemeData.from(
      //   colorScheme: ColorScheme.fromSeed(
      //     seedColor: const Color(0xff4132A6),
      //     primary: const Color(0xff4132A6),
      //     secondary: const Color(0xff4132A6).withOpacity(0.5),
      //   ),
      //   useMaterial3: true,
      // ),
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: primaryColor,
        primaryColorDark: darkPrimaryColor,
        fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
        accentColor: accentColor,
        backgroundColor: backgroundColor,
        scaffoldBackgroundColor: secondaryBackgroundColor,
        appBarTheme: AppBarTheme(
          elevation: 0,
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: accentColor,
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: secondaryBackgroundColor,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: accentColor),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        cardTheme: CardTheme(
          color: secondaryBackgroundColor,
          elevation: 4,
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      routerConfig: _appRouter.config(),
    );
  }
}
