import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class ContestDetailView extends StatelessWidget {
  const ContestDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: 1,
                child: Image.network(
                  'https://codeforces.com/predownloaded/af/22/af228fee1abb015217d8c524de74898aeff36419.png',
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Title'),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
