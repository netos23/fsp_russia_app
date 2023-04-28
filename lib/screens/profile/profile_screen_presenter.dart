import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fsp_russia_app/api/api_clent.dart';
import 'package:fsp_russia_app/domain/auth_service.dart';
import 'package:fsp_russia_app/entity/user_edit_model.dart';
import 'package:fsp_russia_app/entity/user_model.dart';
import 'package:fsp_russia_app/internal/logger.dart';
import 'package:fsp_russia_app/navigation/router.dart';

class ProfileScreenPresenter {
  StackRouter router;
  final ApiClient apiClient;
  final ValueNotifier<UserModel?> user = ValueNotifier(null);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController cityIdController = TextEditingController();

  ProfileScreenPresenter({
    required this.router,
    required this.apiClient,
  });

  Future<void> logout() async {
    AuthService().logout();
  }

  Future<void> deleteAccount() async {}

  Future<void> changeProfile() async {}

  Future<bool> changePassword(String password, String passwordRepeat) async {
    return true;
  }

  void init() {
    _getUser();
  }

  void dispose() {
    cityIdController.dispose();
    nameController.dispose();
    user.dispose();
  }

  Future<void> _getUser() async {
    final userId = AuthService().id;

    if (userId == null) {
      return;
    }

    try {
      final userData = await apiClient.getUser(userId: userId);
      user.value = userData;
    } catch (e, stack) {
      logger.e('Ошибка авторизации', e, stack);
      ScaffoldMessenger.of(router.navigatorKey.currentContext!).showSnackBar(
        const SnackBar(
          content: Text(
            'Неудалось получить данные профиля. Попробуйте позже',
          ),
        ),
      );
      Future.delayed(const Duration(seconds: 30), () => _getUser());
    }
  }

  void routeToMyTeam() {
    router.navigate(const TeamRoute());
  }

  void routeToMyFavorites() {
    router.navigate(const FavouritesRoute());
  }

  void routeToEditProfile() {}

  void routeToMyContests() {
    router.navigate(const MyContestsRoute());
  }

  void routeToAuth() {
    router.navigate(
      AuthRoute(
        onResult: (_) {
          router.pop();
          _getUser();
        },
      ),
    );
  }

  void routeToRegister() {
    router.navigate(
      const RegistrationRoute(),
    );
  }

  Future<void> save() async {
    final userId = user.value;

    if (userId == null) {
      return;
    }

    if (nameController.text.trim().isEmpty) {
      ScaffoldMessenger.of(router.navigatorKey.currentContext!).showSnackBar(
        const SnackBar(
          content: Text(
            'Заполните имя',
          ),
        ),
      );
      return;
    }
    if (cityIdController.text.trim().isEmpty) {
      ScaffoldMessenger.of(router.navigatorKey.currentContext!).showSnackBar(
        const SnackBar(
          content: Text(
            'Заполните город',
          ),
        ),
      );
      return;
    }

    try {
      final userData = await apiClient.putUser(
        userId: userId.id,
        request: UserEditModel(
          name: nameController.text,
          cityId: cityIdController.text,
        ),
      );
      user.value = userData;
    } catch (e, stack) {
      logger.e('Ошибка авторизации', e, stack);
      ScaffoldMessenger.of(router.navigatorKey.currentContext!).showSnackBar(
        const SnackBar(
          content: Text(
            'Неудалось получить данные профиля. Попробуйте позже',
          ),
        ),
      );
      Future.delayed(const Duration(seconds: 30), () => _getUser());
    }
  }
}
