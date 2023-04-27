import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'rating_screen_presenter.dart';

class RatingScreenView extends StatelessWidget {
  const RatingScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final presenter = context.read<RatingScreenPresenter>();

    return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: IconButton(onPressed: (){}, icon: Icon(Icons.search)),
              actions: [IconButton(onPressed: (){}, icon: Icon(Icons.filter_alt))],
              floating: true,
              centerTitle: true,
              title: Text('Рейтинг'),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(60),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        child: Center(
                            child: TextButton(
                              onPressed: () {},
                              child: Text('Username'),
                            )),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: const Center(child: Text('Raiting')),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: const Center(child: Text('City')),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  if (index.isEven) {
                    return Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            child: Center(
                                child: TextButton(
                                  onPressed: presenter.toUserProfile,
                                  child: Text('username'),
                                )),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: const Center(child: Text('test')),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: const Center(child: Text('test')),
                          ),
                        ),
                      ],
                    );
                  }
                  return const Divider();
                }),
              ),
            ),
          ],
        ));
  }
}
