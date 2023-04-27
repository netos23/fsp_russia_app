import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fsp_russia_app/screens/calendar_screen/calendar_presenter.dart';
import 'package:provider/provider.dart';

import 'feed_back_presenter.dart';
import 'feed_back_view.dart';

@RoutePage()
class FeedBackScreen extends StatelessWidget {
  const FeedBackScreen({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => FeedBackPresenter(
        router: context.router,
      ),
      dispose: (_, p) => p.dispose(),
      child: FeedBackView(title: title),
    );
  }
}
