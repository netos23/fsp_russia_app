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
                ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Hero(
                        tag: 1,
                        child: Material(
                          child: ContestCard(
                            onTap: presenter.navigateToDetailCard,
                            onEdit: presenter.navigateToEdit,
                            onAnalitics: presenter.navigateToAnalitics,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ContestCard(),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ContestCard(),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ContestCard(),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ContestCard(),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ContestCard(),
                    ),
                  ],
                ),
                ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ContestCard(
                        onTap: presenter.navigateToDetailCard,
                      ),
                    ),
                  ],
                ),
                ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ContestCard(
                        onTap: presenter.navigateToDetailCard,
                      ),
                    ),
                  ],
                ),
                ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ContestCard(
                        onTap: presenter.navigateToDetailCard,
                      ),
                    ),
                  ],
                ),
              ],
            ),Positioned(
                right: 16.0,
                bottom: kIsWeb? 16.0: 120.0,
                child: FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: presenter.routeToCreateContest,
                ))
          ],
        ),
      ),
    );
  }
}
