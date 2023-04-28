import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fsp_russia_app/widgets/contest_card.dart';
import 'package:provider/provider.dart';

import 'my_contests_screen_presenter.dart';

class MyContestsScreenView extends StatelessWidget {
  const MyContestsScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final presenter = context.read<MyContestsScreenPresenter>();
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Мои Соревнования'),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                text: 'Все',
              ),
              Tab(
                text: 'Прошедшие',
              ),
              Tab(text: 'Предстоящие'),
              Tab(text: 'Какие то еще'),
            ],
          ),
        ),
        body: Stack(
          children: [
            TabBarView(
              children: [
                Center(
                  child: Text(
                    'К сожалению пока нет ни одного соревнования. '
                    'Заходите позже они обязательно появиться.',
                    style: textTheme.headlineLarge?.copyWith(
                      fontSize: 32,
                      color: colorTheme.onBackground,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'К сожалению пока нет ни одного соревнования. '
                    'Заходите позже они обязательно появиться.',
                    style: textTheme.headlineLarge?.copyWith(
                      fontSize: 32,
                      color: colorTheme.onBackground,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'К сожалению пока нет ни одного соревнования. '
                    'Заходите позже они обязательно появиться.',
                    style: textTheme.headlineLarge?.copyWith(
                      fontSize: 32,
                      color: colorTheme.onBackground,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'К сожалению пока нет ни одного соревнования. '
                    'Заходите позже они обязательно появиться.',
                    style: textTheme.headlineLarge?.copyWith(
                      fontSize: 32,
                      color: colorTheme.onBackground,
                    ),
                  ),
                ),
              ],
            ),
            AnimatedBuilder(
                animation: presenter.auth,
                builder: (c, w) {
                  if (presenter.auth.model?.type != 0 &&
                      presenter.auth.model?.type != null) {
                    return Positioned(
                      right: 16.0,
                      bottom: kIsWeb ? 16.0 : 120.0,
                      child: FloatingActionButton(
                        child: Icon(Icons.add),
                        onPressed: presenter.routeToCreateContest,
                      ),
                    );
                  }
                  return const SizedBox.shrink();
                }),
          ],
        ),
      ),
    );
  }
}
