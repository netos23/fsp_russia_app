import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fsp_russia_app/api/api_clent.dart';
import 'package:provider/provider.dart';

import 'auth_screen_presenter.dart';
import 'auth_screen_view.dart';

@RoutePage()
class AuthScreen extends StatelessWidget {
  const AuthScreen({
    Key? key,
    required this.onResult,
  }) : super(key: key);

  final ValueChanged<bool> onResult;

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => AuthScreenPresenter(
        onResult: onResult,
        client: ApiClient(context.read()),
        router: context.router,
      ),
      child: const AuthScreenView(),
    );
  }
}
