import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fsp_russia_app/domain/contest_service.dart';
import 'package:fsp_russia_app/widgets/contest_card.dart';
import 'package:provider/provider.dart';

import 'favourites_screen_presenter.dart';

class FavouritesScreenView extends StatelessWidget {
  const FavouritesScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = List.of(ContestService().favourites);
    final presenter = context.read<FavouritesScreenPresenter>();
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;

    return AnimatedBuilder(
      animation: ContestService(),
      builder: (context, _) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Избранные соревнования'),
            automaticallyImplyLeading: !kIsWeb,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: data.isEmpty
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
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Hero(
                    tag: 'f0-${data[index].name}',
                    child: Material(
                      child: ContestCard(
                        item: data[index],
                        onTap: () => presenter.navigateToDetailCard(data[index]),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
