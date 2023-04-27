import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fsp_russia_app/widgets/contest_card.dart';

@RoutePage()
class ContestScreen extends StatelessWidget {
  const ContestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        body: SafeArea(
          child: TabBarView(
            children: [
              ListView(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ContestCard(),
                  ),
                ],
              ),
              ListView(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ContestCard(),
                  ),
                ],
              ),
              ListView(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ContestCard(),
                  ),
                ],
              ),
              ListView(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ContestCard(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
