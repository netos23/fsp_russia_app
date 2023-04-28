import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fsp_russia_app/widgets/contest_card.dart';
import 'package:provider/provider.dart';

import 'contest_screen_presenter.dart';

class ContestScreenView extends StatelessWidget {
  const ContestScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final presenter = context.read<ContestScreenPresenter>();

    return DefaultTabController(
      length: 4,
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
          ),
            AnimatedBuilder(builder: (c, w) {
              if (presenter.auth.model?.type != 0 && presenter.auth.model?.type != null) return Positioned(
                  right: 16.0,
                  bottom: kIsWeb? 16.0: 120.0,
                  child: FloatingActionButton(
                    child: Icon(Icons.add),
                    onPressed: presenter.routeToCreateContest,
                  ));
              return SizedBox.shrink();
            }, animation:  presenter.auth,)

          ],
        ),
      ),
    );
  }
}
