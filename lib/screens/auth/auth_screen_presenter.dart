import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fsp_russia_app/api/api_clent.dart';
import 'package:fsp_russia_app/domain/auth_service.dart';
import 'package:fsp_russia_app/entity/auth_model.dart';
import 'package:fsp_russia_app/internal/logger.dart';

class AuthScreenPresenter {
  final StackRouter router;
  final ValueChanged<bool> onResult;
  final ApiClient client;
  final AuthService service = AuthService();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController paswwordController = TextEditingController();

  AuthScreenPresenter({
    required this.onResult,
    required this.client,
    required this.router,
  });

  void dispose() {
    emailController.dispose();
    paswwordController.dispose();
  }

  Future<void> auth() async {
    try {
      final tokens = await client.postAuth(
        request: AuthModel(
          email: emailController.text,
          password: paswwordController.text,
        ),
      );

      service.saveTokens(
        tokens.accessToken,
        tokens.id,
      );

      onResult(service.isAuthenticated);
    } catch (e, stack) {
      logger.e('Ошибка авторизации', e, stack);
      ScaffoldMessenger.of(router.navigatorKey.currentContext!).showSnackBar(
        const SnackBar(
          content: Text(
            'Ошибка при авторизации. Попробуйте позже',
          ),
        ),
      );
    }
  }
}
