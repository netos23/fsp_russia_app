import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fsp_russia_app/entity/contest_model.dart';
import 'package:fsp_russia_app/screens/contest_detail/contest_detail_presenter.dart';
import 'package:fsp_russia_app/screens/contest_detail/contest_detail_view.dart';
import 'package:provider/provider.dart';

@RoutePage()
class ContestDetailScreen extends StatelessWidget {
  const ContestDetailScreen({
    Key? key,
    required this.model,
  }) : super(key: key);

  final ContestModel model;

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (BuildContext context) => ContestDetailPresenter(
        context.router,
      ),
      child:  ContestDetailView(model: model,),
    );
  }
}
