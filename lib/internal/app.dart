import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fsp_russia_app/navigation/router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:provider/provider.dart';

import 'color_schemes.g.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primaryColor = Color(0xFF0253FC);
const Color darkPrimaryColor = Color(0xFF01071D);
const Color accentColor = Color(0xFF4C9DFF);
const Color backgroundColor = Color(0xFF132A4A);
const Color secondaryBackgroundColor = Color(0xFF0A2552);

class SportApp extends StatefulWidget {
  SportApp({Key? key}) : super(key: key);

  @override
  State<SportApp> createState() => _SportAppState();
}

class _SportAppState extends State<SportApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    const timeout = Duration(seconds: 30);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ValueNotifier(ThemeMode.light),
        ),
        Provider(
          create:  (_) {
            var dio = Dio();
            dio.options
              ..baseUrl = 'https://690a-94-25-60-188.ngrok-free.app/'
              ..connectTimeout = timeout
              ..receiveTimeout = timeout
              ..sendTimeout = timeout;
            dio.interceptors.add(PrettyDioLogger());
            return dio;
          },
        ),
      ],
      builder: (context, _) {
        final themeMode = context.watch<ValueNotifier<ThemeMode>>();
        return MaterialApp.router(
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: lightColorScheme,
            textTheme: GoogleFonts.jetBrainsMonoTextTheme(),
          ),
          highContrastTheme: ThemeData(
            useMaterial3: true,
            colorScheme: hightColorScheme,
            textTheme: GoogleFonts.jetBrainsMonoTextTheme(),
          ),
          highContrastDarkTheme: ThemeData(
            useMaterial3: true,
            colorScheme: hightColorScheme,
            textTheme: GoogleFonts.jetBrainsMonoTextTheme(),
          ),

          darkTheme: ThemeData(
            useMaterial3: true,
            colorScheme: darkColorScheme,
            textTheme: GoogleFonts.jetBrainsMonoTextTheme(),
          ),
          themeMode: themeMode.value,
          routerConfig: _appRouter.config(),
        );
      },
    );
  }
}
