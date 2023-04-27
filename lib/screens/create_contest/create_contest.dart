import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:fsp_russia_app/screens/create_contest/create_contest_presenter.dart';
import 'package:fsp_russia_app/screens/create_contest/create_contest_view.dart';
import 'package:provider/provider.dart';

@RoutePage()
class CreateContestScreen extends StatelessWidget {
  const CreateContestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => CreateContestPresenter(),
      child: const CreateContestView(),
    );
  }
}
