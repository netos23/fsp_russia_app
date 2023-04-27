import 'package:auto_route/auto_route.dart';
import 'package:fsp_russia_app/navigation/router.dart';

class ContestDetailPresenter {
  final StackRouter router;

  ContestDetailPresenter(this.router);

  void openReview() {
    router.navigate(
      FeedBackRoute(
        title: 'Мероприятие 1',
      ),
    );
  }
}
