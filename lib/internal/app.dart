import 'package:flutter/material.dart';
import 'package:fsp_russia_app/navigation/router.dart';

class SportApp extends StatelessWidget {
  SportApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff4132A6),
        ),
        useMaterial3: true,
      ),
      routerConfig: _appRouter.config(),
    );
  }
}
