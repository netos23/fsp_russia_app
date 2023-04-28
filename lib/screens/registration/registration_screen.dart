import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fsp_russia_app/api/api_clent.dart';
import 'package:provider/provider.dart';

import 'registration_screen_presenter.dart';
import 'registration_screen_view.dart';

@RoutePage()
class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => RegistrationScreenPresenter(
        ApiClient(
          context.read(),
        ),
        context.router,
      ),
      dispose: (_, p) => p.dispose(),
      child: const RegistrationScreenView(),
    );
  }
}
