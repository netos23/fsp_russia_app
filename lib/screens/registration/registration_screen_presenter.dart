import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fsp_russia_app/api/api_clent.dart';
import 'package:fsp_russia_app/entity/registration_model.dart';
import 'package:fsp_russia_app/internal/logger.dart';

class RegistrationScreenPresenter {
  final StackRouter router;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController nicknameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController cityIdController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();

  final ValueNotifier<int> typeSelector = ValueNotifier(0);
  final ApiClient client;

  final types = [
    'Спортсмен',
    'Спонсор',
    'Отделение ФСП',
    'Администратор ФСП',
  ];
  final _types = [
    'sportsman',
    'partner',
    'regional',
    'admin',
  ];

  RegistrationScreenPresenter(
    this.client,
    this.router,
  );

  void dispose() {
    nameController.dispose();
    nicknameController.dispose();
    passwordController.dispose();
    cityIdController.dispose();
    emailController.dispose();
    userNameController.dispose();
  }

  Future<void> registration() async {
    try {
      await client.postRegistration(
        request: RegistrationModel(
          name: nameController.text,
          email: emailController.text,
          username: userNameController.text,
          type: _types[typeSelector.value],
          cityId: cityIdController.text,
          password: passwordController.text,
        ),
      );
      router.pop();
    } catch (e, stack) {
      logger.e('Ошибка авторизации', e, stack);
      ScaffoldMessenger.of(router.navigatorKey.currentContext!).showSnackBar(
        const SnackBar(
          content: Text(
            'Ошибка при регистрации. Попробуйте позже',
          ),
        ),
      );
    }
  }

  void onChange(String? value) {
    if (value == null) {
      return;
    }

    final index = types.indexOf(value);
    typeSelector.value = index == -1 ? 0 : index;
  }
}
