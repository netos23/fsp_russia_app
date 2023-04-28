import 'package:auto_route/auto_route.dart';
import 'package:fsp_russia_app/entity/contest_model.dart';
import 'package:fsp_russia_app/navigation/router.dart';

class FavouritesScreenPresenter {

  final StackRouter router;

  FavouritesScreenPresenter(this.router);

  void navigateToDetailCard(ContestModel model) {
    router.navigate( ContestDetailRoute(model: model));
  }
}