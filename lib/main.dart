import 'package:flutter/material.dart';
import 'package:fsp_russia_app/internal/app.dart';

import 'domain/auth_service.dart';
import 'domain/contest_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AuthService().init();
  await ContestService().init();
  runApp(SportApp());
}
