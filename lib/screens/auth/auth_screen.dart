import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'auth_screen_presenter.dart';
import 'auth_screen_view.dart';

@RoutePage()
class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(create: (BuildContext context) => AuthScreenPresenter(),
      child: const AuthScreenView(),
    );
  }
}
