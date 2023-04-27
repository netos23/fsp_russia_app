import 'package:flutter/material.dart';
import 'package:fsp_russia_app/widgets/contest_card.dart';

class FavouritesScreenView extends StatelessWidget {
  const FavouritesScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Избранные соревнования'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ContestCard(),
            ContestCard(),
            ContestCard(),
          ],
        ),
      ),
    );
  }
}
