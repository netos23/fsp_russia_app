import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'registration_screen_presenter.dart';

class RegistrationScreenView extends StatelessWidget {
  const RegistrationScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final presenter = context.read<RegistrationScreenPresenter>();

    var textTheme = Theme.of(context).textTheme;
    var colorTheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: !kIsWeb,
        title: const Text('Регистрация'),
      ),
      body: Stack(
        children: [
          GestureDetector(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextField(
                    controller: presenter.nameController,
                    style: textTheme.bodyLarge?.copyWith(
                      color: colorTheme.primary,
                    ),
                    decoration: const InputDecoration(
                      hintText: 'ФИО / ФСП / Организация',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextField(
                    controller: presenter.userNameController,
                    style: textTheme.bodyLarge?.copyWith(
                      color: colorTheme.primary,
                    ),
                    decoration: const InputDecoration(hintText: 'Username'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextField(
                    controller: presenter.emailController,
                    style: textTheme.bodyLarge?.copyWith(
                      color: colorTheme.primary,
                    ),
                    decoration: const InputDecoration(hintText: 'Email'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextField(
                    controller: presenter.cityIdController,
                    style: textTheme.bodyLarge?.copyWith(
                      color: colorTheme.primary,
                    ),
                    decoration: const InputDecoration(hintText: 'Город'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Тип аккаунта:',
                        style: textTheme.bodyMedium?.copyWith(
                          color: colorTheme.onBackground,
                        ),
                      ),
                      ValueListenableBuilder(
                        valueListenable: presenter.typeSelector,
                        builder: (context, index, _) {
                          return DropdownButton<String>(
                            value: presenter.types[index],
                            icon: const Icon(Icons.arrow_drop_down),
                            elevation: 16,
                            style: TextStyle(
                              color: colorTheme.primary,
                            ),
                            underline: Container(
                              height: 1,
                              color: colorTheme.onBackground,
                            ),
                            onChanged: presenter.onChange,
                            items: presenter.types.map(
                              (value) {
                                return DropdownMenuItem(
                                  value: value,
                                  child: Text(value),
                                );
                              },
                            ).toList(),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextField(
                    controller: presenter.passwordController,
                    style: textTheme.bodyLarge?.copyWith(
                      color: colorTheme.primary,
                    ),
                    decoration: const InputDecoration(hintText: 'Пароль'),
                    obscureText: true,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                OutlinedButton(
                  onPressed: presenter.registration,
                  child: const Text('Зарегистрирогваться'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
