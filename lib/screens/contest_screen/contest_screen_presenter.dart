import 'package:auto_route/auto_route.dart';
import 'package:fsp_russia_app/navigation/router.dart';

class ContestScreenPresenter {
  final StackRouter router;

  ContestScreenPresenter(this.router);

  void navigateToDetailCard() {
    router.navigate(const ContestDetailRoute());
  }

  void routeToCreateContest() {
    router.navigate(CreateContestRoute());
  }
}