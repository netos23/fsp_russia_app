import 'package:auto_route/auto_route.dart';
import 'package:fsp_russia_app/navigation/router.dart';

class FavouritesScreenPresenter {

  final StackRouter router;

  FavouritesScreenPresenter(this.router);

  void navigateToDetailCard() {
    router.navigate(const ContestDetailRoute());
  }
}