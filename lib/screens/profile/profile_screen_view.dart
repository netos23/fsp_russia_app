import 'package:flutter/material.dart';
import 'package:fsp_russia_app/screens/profile/profile_screen_presenter.dart';
import 'package:provider/provider.dart';

class ProfileScreenView extends StatelessWidget {
  const ProfileScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final presenter = context.read<ProfileScreenPresenter>();

    return Scaffold(
        body: SafeArea(
      child: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Username'),
              Text('Имя Фамилия'),
              Text('2000 рейтинг'),
              ElevatedButton(onPressed: () {}, child: Text('О нас')),
              ElevatedButton(onPressed: () {}, child: Text('Выйти')),
              ElevatedButton(onPressed: () {}, child: Text('Удалить аккаунт')),
            ],
          ),
        ),
      ),
    ));
  }
}
