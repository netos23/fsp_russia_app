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
        child: Column(
          children: [
            const SizedBox(height: 16,),
            Text('Username', style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 32, color: Theme.of(context).colorScheme.onBackground)),
            Text('Имя Фамилия', style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 32, color: Theme.of(context).colorScheme.onBackground)),
            Text('2000 рейтинг', style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 24, color: Theme.of(context).colorScheme.onBackground)),
            const SizedBox(height: 16,),
            ElevatedButton(onPressed: () {}, child: const Text('Моя команда')),
            const Spacer(),
            ElevatedButton(onPressed: () {}, child: const Text('О нас')),
            ElevatedButton(onPressed: () {}, child: const Text('Выйти')),
            ElevatedButton(
                onPressed: () {}, child: const Text('Удалить аккаунт'),
            ),
            const SizedBox(height: 100,),
          ],
        ),
      ),
    ));
  }
}
