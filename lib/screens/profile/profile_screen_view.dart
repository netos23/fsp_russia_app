import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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
    return Scaffold(
        body: SafeArea(
      child: Align(
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
                        'Username',
                        style: textTheme.bodyLarge?.copyWith(
                          fontSize: 32,
                          color: colorScheme.onBackground,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text('Имя Фамилия',
                          style: textTheme.bodyLarge?.copyWith(
                              fontSize: 32, color: colorScheme.onBackground)),
                    ),
                    Expanded(
                      child: Text('2000 рейтинг',
                          style: textTheme.bodyMedium?.copyWith(
                              fontSize: 24, color: colorScheme.onBackground)),
                    ),
                  ],
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                sliver: SliverGrid(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
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
                        onPressed: () {},
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
                        onPressed: () {},
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
      ),
    ));
  }
}

class _EditProffile extends StatelessWidget {
  const _EditProffile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var colorScheme = Theme.of(context).colorScheme;
    return ElevatedButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          useRootNavigator: true,
          clipBehavior: Clip.hardEdge,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            )
          ),
          builder: (_) => SizedBox(
            height: 600,
            child: Scaffold(
              body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView(
                  children: [
                    Text(
                      'test',
                      style: textTheme.bodyLarge
                          ?.copyWith(color: colorScheme.onBackground),
                    ),
                    TextFormField(),
                  ],
                ),
              ),
              floatingActionButton: ElevatedButton(
                onPressed: () {},
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
