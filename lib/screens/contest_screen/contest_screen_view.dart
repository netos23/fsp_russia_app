import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fsp_russia_app/domain/auth_service.dart';
import 'package:fsp_russia_app/entity/user_model.dart';
import 'package:fsp_russia_app/widgets/contest_card.dart';
import 'package:provider/provider.dart';

import 'contest_screen_presenter.dart';

class ContestScreenView extends StatelessWidget {
  const ContestScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final presenter = context.read<ContestScreenPresenter>();
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;

    return ValueListenableBuilder(
      valueListenable: presenter.contests,
      builder: (context, contests, _) {
        if (contests == null) {
          return Center(
            child: !kIsWeb && Platform.isIOS
                ? const CupertinoActivityIndicator()
                : const CircularProgressIndicator(),
          );
        }

        if (contests.isEmpty) {
          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'К сожалению пока нет ни одного соревнования. '
                        'Заходите позже они обязательно появиться.',
                        textAlign: TextAlign.center,
                        style: textTheme.bodyMedium?.copyWith(
                          fontSize: 32,
                          color: colorTheme.onBackground,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Image.asset('assets/figure-288d762731.png'),
                    ),
                  ),
                ],
              ),
            ),
          );
        }

        final archive = presenter.getArchived(contests);
        final actual = presenter.getActual(contests);
        final future = presenter.getFuture(contests);
        final hard = presenter.getDificalty(contests);
        final recomended = presenter.getRecomended(contests);

        return DefaultTabController(
          length: 6,
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 0,
              bottom: const TabBar(
                isScrollable: true,
                tabs: [
                  Tab(
                    text: 'Все',
                  ),
                  Tab(
                    text: 'Прошедшие',
                  ),
                  Tab(
                    text: 'Текущие',
                  ),
                  Tab(text: 'Предстоящие'),
                  Tab(text: 'Сложные'),
                  Tab(text: 'Рекомендованные',),
                ],
              ),
            ),
            body: Stack(
              children: [
                TabBarView(
                  children: [
                    contests.isEmpty
                        ? Center(
                            child: Text(
                              'К сожалению пока нет ни одного соревнования. '
                              'Заходите позже они обязательно появиться.',
                              style: textTheme.headlineLarge?.copyWith(
                                fontSize: 32,
                                color: colorTheme.onBackground,
                              ),
                            ),
                          )
                        : GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 500,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                            ),
                            itemCount: contests.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Hero(
                                  tag: 'ct0-${contests[index].name}',
                                  child: Material(
                                    child: ContestCard(
                                      item: contests[index],
                                      onTap: () => presenter
                                          .navigateToDetailCard(contests[index]),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                    archive.isEmpty
                        ? Center(
                            child: Text(
                              'К сожалению пока нет ни одного соревнования. '
                              'Заходите позже они обязательно появиться.',
                              style: textTheme.headlineLarge?.copyWith(
                                fontSize: 32,
                                color: colorTheme.onBackground,
                              ),
                            ),
                          )
                        : GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 500,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                            ),
                            itemCount: archive.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Hero(
                                  tag: 'ct0-${archive[index].name}',
                                  child: Material(
                                    child: ContestCard(
                                      item: archive[index],
                                      onTap: () => presenter
                                          .navigateToDetailCard(archive[index]),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                    actual.isEmpty
                        ? Center(
                            child: Text(
                              'К сожалению пока нет ни одного соревнования. '
                              'Заходите позже они обязательно появиться.',
                              style: textTheme.headlineLarge?.copyWith(
                                fontSize: 32,
                                color: colorTheme.onBackground,
                              ),
                            ),
                          )
                        : GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 500,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                            ),
                            itemCount: actual.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Hero(
                                  tag: 'ct1-${actual[index].name}',
                                  child: Material(
                                    child: ContestCard(
                                      item: actual[index],
                                      onTap: () => presenter
                                          .navigateToDetailCard(actual[index]),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                    future.isEmpty
                        ? Center(
                            child: Text(
                              'К сожалению пока нет ни одного соревнования. '
                              'Заходите позже они обязательно появиться.',
                              style: textTheme.headlineLarge?.copyWith(
                                fontSize: 32,
                                color: colorTheme.onBackground,
                              ),
                            ),
                          )
                        : GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 500,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                            ),
                            itemCount: future.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Hero(
                                  tag: 'ct2-${future[index].name}',
                                  child: Material(
                                    child: ContestCard(
                                      item: future[index],
                                      onTap: () => presenter
                                          .navigateToDetailCard(future[index]),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),

                    hard.isEmpty
                        ? Center(
                            child: Text(
                              'К сожалению пока нет ни одного соревнования. '
                              'Заходите позже они обязательно появиться.',
                              style: textTheme.headlineLarge?.copyWith(
                                fontSize: 32,
                                color: colorTheme.onBackground,
                              ),
                            ),
                          )
                        : GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 500,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                            ),
                            itemCount: hard.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Hero(
                                  tag: 'ct2-${hard[index].name}',
                                  child: Material(
                                    child: ContestCard(
                                      item: hard[index],
                                      onTap: () => presenter
                                          .navigateToDetailCard(hard[index]),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                    recomended.isEmpty
                        ? Center(
                            child: Text(
                              'К сожалению пока нет ни одного соревнования. '
                              'Заходите позже они обязательно появиться.',
                              style: textTheme.headlineLarge?.copyWith(
                                fontSize: 32,
                                color: colorTheme.onBackground,
                              ),
                            ),
                          )
                        : GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 500,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                            ),
                            itemCount: recomended.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Hero(
                                  tag: 'ct2-${recomended[index].name}',
                                  child: Material(
                                    child: ContestCard(
                                      item: recomended[index],
                                      onTap: () => presenter
                                          .navigateToDetailCard(recomended[index]),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),

                  ],
                ),
                Positioned(
                  right: 16.0,
                  bottom: kIsWeb ? 16.0 : 120.0,
                  child: AnimatedBuilder(
                    animation: AuthService(),
                    builder: (context, _) {
                      return FutureBuilder(
                        future: presenter.getUserModel(),
                        builder: (context, snap) {
                          final data = snap.data;

                          if (data == null ||
                              !data.type.contains(UserRole.fsp.index) ||
                              !data.type.contains(UserRole.sponsor.index)) {
                            return Container();
                          }

                          return FloatingActionButton(
                            onPressed: presenter.routeToCreateContest,
                            child: const Icon(Icons.add),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
