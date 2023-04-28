import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fsp_russia_app/screens/auth/auth_screen_presenter.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthScreenView extends StatelessWidget {
  const AuthScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var colorTheme = Theme.of(context).colorScheme;

    final presenter = context.read<AuthScreenPresenter>();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: !kIsWeb,
        title: const Text('Авторизация'),
      ),
      body: Stack(children: [
        GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
        ),
        Positioned.fill(
          child: Center(
            child: Container(
              constraints: const BoxConstraints.expand(
                width: 300,
              ),
              alignment: Alignment.center,
              margin: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Center(
                      child: TextField(
                        decoration: const InputDecoration(
                          hintText: 'email / username',
                        ),
                        controller: presenter.emailController,
                        style: textTheme.bodyLarge?.copyWith(
                          color: colorTheme.primary,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Center(
                      child: TextField(
                        controller: presenter.paswwordController,
                        obscureText: true,
                        decoration: const InputDecoration(hintText: 'Пароль'),
                        style: textTheme.bodyLarge?.copyWith(
                          color: colorTheme.primary,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  OutlinedButton(
                    onPressed: presenter.auth,
                    child: const Text('Войти'),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Image.asset(
                        'assets/figure-288d762731.png',
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
