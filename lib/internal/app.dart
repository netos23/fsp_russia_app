import 'package:flutter/material.dart';
import 'package:fsp_russia_app/navigation/router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_schemes.g.dart';

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
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        textTheme: GoogleFonts.jetBrainsMonoTextTheme(),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        textTheme: GoogleFonts.jetBrainsMonoTextTheme(),
      ),
      themeMode: ThemeMode.dark,
      routerConfig: _appRouter.config(),
    );
  }
}
