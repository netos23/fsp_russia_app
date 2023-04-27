import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:fsp_russia_app/screens/profile/profile_screen_view.dart';
import 'package:provider/provider.dart';

import 'profile_screen_presenter.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (BuildContext context) => ProfileScreenPresenter(),
      child: const ProfileScreenView(),
    );
  }
}
