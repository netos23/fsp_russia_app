import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:fsp_russia_app/screens/team_screen/team_screen_presenter.dart';
import 'package:fsp_russia_app/screens/team_screen/team_screen_view.dart';
import 'package:provider/provider.dart';

@RoutePage()
class TeamScreen extends StatelessWidget {
  const TeamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (BuildContext context) => TeamScreenPresenter(),
      child: const TeamScreenView(),
    );
  }
}
