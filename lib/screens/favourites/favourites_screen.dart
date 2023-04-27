import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:fsp_russia_app/screens/favourites/favourites_screen_view.dart';
import 'package:provider/provider.dart';

@RoutePage()
class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(create: (BuildContext context) => const FavouritesScreenView(),
      child: const FavouritesScreenView(),
    );
  }
}
