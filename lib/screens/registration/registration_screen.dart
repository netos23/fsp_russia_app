import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'registration_screen_presenter.dart';
import 'registration_screen_view.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(create: (BuildContext context) => RegistrationScreenPresenter(),
      child: const RegistrationScreenView(),
    );
  }
}
