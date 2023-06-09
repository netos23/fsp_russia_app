import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fsp_russia_app/api/api_clent.dart';
import 'package:fsp_russia_app/screens/contest_screen/contest_screen_presenter.dart';
import 'package:provider/provider.dart';

import 'contest_screen_view.dart';

@RoutePage()
class ContestScreen extends StatelessWidget {
  const ContestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (BuildContext context) => ContestScreenPresenter(
        context.router,
        ApiClient(context.read())
      )..init(),
      dispose: (_, p) => p.dispose(),
      child: const ContestScreenView(),
    );
  }
}
