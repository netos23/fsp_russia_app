import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'analitics_screen_presenter.dart';
import 'analitics_screen_view.dart';

@RoutePage()
class AnaliticsScreen extends StatelessWidget {
  const AnaliticsScreen({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => AnaliticsScreenPresenter(
        router: context.router,
      ),
      dispose: (_, p) => p.dispose(),
      child: AnaliticsScreenView(
        title: title,
      ),
    );
  }
}
