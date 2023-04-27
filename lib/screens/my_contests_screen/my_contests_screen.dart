import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'my_contests_screen_presenter.dart';
import 'my_contests_screen_view.dart';

@RoutePage()
class MyContestsScreen extends StatelessWidget {
  const MyContestsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => MyContestsScreenPresenter(
        router: context.router,
      ),
      dispose: (_, p) => p.dispose(),
      child: const MyContestsScreenView(),
    );
  }
}
