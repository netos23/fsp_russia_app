import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fsp_russia_app/screens/favourites/favourites_screen_view.dart';
import 'package:provider/provider.dart';

import 'favourites_screen_presenter.dart';

@RoutePage()
class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => FavouritesScreenPresenter(
        context.router,
      ),
      child: const FavouritesScreenView(),
    );
  }
}
