import 'package:auto_route/auto_route.dart';
import 'package:fsp_russia_app/navigation/router.dart';

import '../../domain/auth_service.dart';

class MyContestsScreenPresenter {
  final StackRouter router;

  AuthService auth = AuthService();

  MyContestsScreenPresenter({
    required this.router,
  });

  void init() {}

  void dispose() {}

  void navigateToDetailCard() {
    router.navigate(const ContestDetailRoute());
  }

  void routeToCreateContest() {
    router.navigate(const CreateContestRoute());
  }

  void navigateToEdit() {}

  void navigateToAnalitics() {
    router.navigate(
      AnaliticsRoute(
        title: 'Мое мероприятие',
      ),
    );
  }
}
