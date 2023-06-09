import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fsp_russia_app/api/api_clent.dart';
import 'package:fsp_russia_app/domain/auth_service.dart';
import 'package:fsp_russia_app/domain/contest_service.dart';
import 'package:fsp_russia_app/entity/contest_model.dart';
import 'package:fsp_russia_app/entity/user_model.dart';
import 'package:fsp_russia_app/internal/logger.dart';
import 'package:fsp_russia_app/domain/auth_service.dart';
import 'package:fsp_russia_app/navigation/router.dart';

int maxRating = 5;

class ContestScreenPresenter {
  final StackRouter router;
  final ApiClient apiClient;

  final ValueNotifier<List<ContestModel>?> contests = ValueNotifier(null);

  ContestScreenPresenter(this.router, this.apiClient);
  final auth = AuthService();

  void navigateToDetailCard(   ContestModel  item) {
    router.navigate( ContestDetailRoute(model: item));
  }

  void routeToCreateContest() {
    router.navigate(const CreateContestRoute());
  }

  Future<UserModel?> getUserModel() async {
    final model = AuthService().model;
    final id = AuthService().id;

    if (id == null) {
      return null;
    }

    if (model != null) {
      return model;
    }

    try {
      return await apiClient.getUser(userId: id);
    } catch (e, stack) {
      logger.e('Ошибка авторизации', e, stack);
      ScaffoldMessenger.of(router.navigatorKey.currentContext!).showSnackBar(
        const SnackBar(
          content: Text(
            'Неудалось получить данные профиля. Попробуйте позже',
          ),
        ),
      );
    }
  }

  void init() {
    ContestService()
        .getContestsModels(
          apiClient,
          ScaffoldMessenger.of(router.navigatorKey.currentContext!),
        )
        .then((value) => contests.value = value);
  }

  void dispose() {
    contests.dispose();
  }

  List<ContestModel> getArchived(List<ContestModel> contests) {
    final now = DateTime.now();
    return contests
        .where(
          (c) => c.end!.millisecondsSinceEpoch < now.millisecondsSinceEpoch,
        )
        .toList();
  }

  List<ContestModel> getDificalty(List<ContestModel> contests) {
    final now = DateTime.now();
    return contests
        .where(
          (c) => c.difficulty > 5,
        )
        .toList();
  }

  List<ContestModel> getRecomended(List<ContestModel> contests) {
    final now = DateTime.now();
    final service = AuthService();
    final model = service.model;
    if(model == null){
      return [];
    }
    return contests
        .where(
          (c) => (model.rating / maxRating) * 10 >= c.difficulty,
        )
        .toList();
  }

  List<ContestModel> getActual(List<ContestModel> contests) {
    final now = DateTime.now();
    return contests
        .where(
          (c) =>
              c.begin!.millisecondsSinceEpoch < now.millisecondsSinceEpoch &&
              now.millisecondsSinceEpoch < c.end!.millisecondsSinceEpoch,
        )
        .toList();
  }

  List<ContestModel> getFuture(List<ContestModel> contests) {
    final now = DateTime.now();
    return contests
        .where(
          (c) => now.millisecondsSinceEpoch < c.begin!.millisecondsSinceEpoch,
        )
        .toList();
  }
}
