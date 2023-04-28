import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:fsp_russia_app/entity/contest_model.dart';
import 'package:provider/provider.dart';

import 'contest_detail_presenter.dart';

class ContestDetailView extends StatelessWidget {
  const ContestDetailView({Key? key, required this.model,}) : super(key: key);

  final ContestModel model;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme
        .of(context)
        .textTheme;
    final colorTheme = Theme
        .of(context)
        .colorScheme;
    final presenter = context.read<ContestDetailPresenter>();
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        height: 50,
        child: ElevatedButton(
          onPressed: presenter.openReview,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.rate_review_outlined),
              SizedBox(
                width: 10,
              ),
              FittedBox(
                child: Text('Оставить отзыв'),
              ),
            ],
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Title',
                style: textTheme.headlineMedium?.copyWith(
                  color: colorTheme.primary,
                ),
              ),
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
                child: Markdown(
                  shrinkWrap: true,

                  data: model.description,
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
