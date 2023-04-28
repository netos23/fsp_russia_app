import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fsp_russia_app/domain/auth_service.dart';
import 'package:fsp_russia_app/screens/profile/profile_screen_presenter.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreenView extends StatelessWidget {
  const ProfileScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final presenter = context.read<ProfileScreenPresenter>();

    var textTheme = Theme.of(context).textTheme;
    var colorScheme = Theme.of(context).colorScheme;
    var authService = AuthService();
    return Scaffold(
      body: SafeArea(
        child: AnimatedBuilder(
          animation: authService,
          builder: (context, _) {
            if (!authService.isAuthenticated) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Чтобы воспользоваться профилем необходимо '
                      'войти или зарегестрироваться.',
                      textAlign: TextAlign.center,
                      style: textTheme.headlineSmall?.copyWith(
                        color: colorScheme.onBackground,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: presenter.routeToAuth,
                            child: const Text(
                              'Войти',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: presenter.routeToRegister,
                            child: const FittedBox(
                              child: Text(
                                'Зарегистрироваться',
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              );
            }

            return _ProfileView();
          },
        ),
      ),
    );
  }
}

class _ProfileView extends StatelessWidget {
  const _ProfileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final presenter = context.read<ProfileScreenPresenter>();

    var textTheme = Theme.of(context).textTheme;
    var colorScheme = Theme.of(context).colorScheme;
    return ValueListenableBuilder(
      valueListenable: presenter.user,
      builder: (context, user, _) {
        if (user == null) {
          return Center(
            child: !kIsWeb && Platform.isIOS
                ? const CupertinoActivityIndicator()
                : const CircularProgressIndicator(),
          );
        }

        return Align(
          alignment: Alignment.topCenter,
          child: Theme(
            data: Theme.of(context).copyWith(
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        10,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 200,
                  flexibleSpace: Column(
                    children: [
                      Expanded(
                        child: Text(
                          user.username,
                          style: textTheme.bodyLarge?.copyWith(
                            fontSize: 32,
                            color: colorScheme.onBackground,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(user.name,
                            style: textTheme.bodyLarge?.copyWith(
                                fontSize: 32, color: colorScheme.onBackground)),
                      ),
                      Expanded(
                        child: Text(
                          '${user.rating} рейтинг',
                          style: textTheme.bodyMedium?.copyWith(
                              fontSize: 24, color: colorScheme.onBackground),
                        ),
                      ),
                    ],
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  sliver: SliverGrid(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    delegate: SliverChildListDelegate([
                      ElevatedButton(
                        onPressed: presenter.routeToMyTeam,
                        child: const FittedBox(
                          child: Text(
                            'Моя команда',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: presenter.routeToMyContests,
                        child: const FittedBox(
                          child: Text(
                            'Мои соревнования',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: presenter.routeToMyFavorites,
                        child: const Text(
                          'Избранные\nсоревнования',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const _EditProffile(),
                    ]),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 20,
                  ),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        ElevatedButton(
                          onPressed: () {
                            launchUrl(Uri.parse(
                              'https://fsp-russia.com/',
                            ));
                          },
                          child: const Text(
                            'О нас',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: presenter.logout,
                          style: ElevatedButton.styleFrom(
                            foregroundColor: colorScheme.error,
                          ),
                          child: const Text(
                            'Выйти',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: colorScheme.errorContainer,
                            foregroundColor: colorScheme.error,
                          ),
                          onPressed: presenter.logout,
                          child: const Text(
                            'Удалить аккаунт',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 70,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class _EditProffile extends StatelessWidget {
  const _EditProffile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final presenter = context.read<ProfileScreenPresenter>();
    var textTheme = Theme.of(context).textTheme;
    var colorScheme = Theme.of(context).colorScheme;
    return ElevatedButton(
      onPressed: () {
        presenter.nameController.text = presenter.user.value?.name ?? '';
        presenter.cityIdController.text = presenter.user.value?.cityId ?? '';
        // todo web

        showModalBottomSheet(
          context: context,
          useRootNavigator: true,
          clipBehavior: Clip.hardEdge,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          )),
          builder: (_) => SizedBox(
            height: 600,
            child: Scaffold(
              body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'Редактирование данных',
                      style: textTheme.bodyLarge
                          ?.copyWith(color: colorScheme.onBackground),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    TextField(
                      controller: presenter.nameController,
                      style: textTheme.bodyLarge?.copyWith(
                        color: colorScheme.primary,
                      ),
                      decoration: const InputDecoration(
                        hintText: 'ФИО / ФСП / Организация',
                      ),
                    ),
                    TextField(
                      controller: presenter.cityIdController,
                      style: textTheme.bodyLarge?.copyWith(
                        color: colorScheme.primary,
                      ),
                      decoration: const InputDecoration(hintText: 'Город'),
                    ),
                  ],
                ),
              ),
              floatingActionButton: ElevatedButton(
                onPressed: presenter.save,
                child: const Text('Сохранить'),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
            ),
          ),
          isScrollControlled: false,
        );
      },
      child: const Text(
        'Редактировать данные',
        textAlign: TextAlign.center,
      ),
    );
  }
}
