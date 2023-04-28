import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'rating_screen_presenter.dart';

class RatingScreenView extends StatefulWidget {
  const RatingScreenView({Key? key}) : super(key: key);

  @override
  State<RatingScreenView> createState() => _RatingScreenViewState();
}

class _RatingScreenViewState extends State<RatingScreenView> {
  bool isSearchEnabled = false;

  @override
  Widget build(BuildContext context) {
    final presenter = context.read<RatingScreenPresenter>();

    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          leading: IconButton(
            onPressed: () {
              setState(() {
                isSearchEnabled = !isSearchEnabled;
              });
            },
            icon: isSearchEnabled
                ? const Icon(Icons.close)
                : const Icon(Icons.search),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context, rootNavigator: true)
                      .push(ModalBottomSheetRoute(
                          builder: (_) {
                            return SizedBox(
                              height: 600,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: ListView(
                                  children: const [
                                    Text('test'),
                                  ],
                                ),
                              ),
                            );
                          },
                          isScrollControlled: false));
                },
                icon: const Icon(Icons.filter_alt))
          ],
          floating: true,
          centerTitle: true,
          title: isSearchEnabled ? const TextField() : const Text('Рейтинг'),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    child: Center(
                        child: TextButton(
                      onPressed: () {},
                      child: const Text('Имя'),
                    )),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Center(child: Text('Рейтинг', style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Theme.of(context).colorScheme.onBackground),)),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Center(child: Text('Город', style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Theme.of(context).colorScheme.onBackground),)),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
                    (context, index) {
              if (index.isEven) {
                return Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        child: Center(
                            child: TextButton(
                          onPressed: presenter.toUserProfile,
                          child: Text(presenter.data[index][0]),
                        )),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(child: Text(presenter.data[index][1], style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Theme.of(context).colorScheme.onBackground),)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(child: Text(presenter.data[index][2], style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Theme.of(context).colorScheme.onBackground),)),
                      ),
                    ),
                  ],
                );
              }
              return const Divider();
            },
            childCount: 10),
          ),
        ),
      ],
    ));
  }
}
