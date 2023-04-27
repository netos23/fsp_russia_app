import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fsp_russia_app/screens/rating_screen/rating_screen_presenter.dart';
import 'package:fsp_russia_app/screens/rating_screen/rating_screen_view.dart';
import 'package:provider/provider.dart';

@RoutePage()
class RatingScreen extends StatelessWidget {
  const RatingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => RatingScreenPresenter(),
      child: const RatingScreenView(),
    );
  }
}
