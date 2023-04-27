import 'package:flutter/material.dart';

class RegistrationScreenView extends StatelessWidget {
  const RegistrationScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Column(
              children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextFormField(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextFormField(
                    obscureText: true,
                  ),
                ),
                Spacer(),
                ElevatedButton(
                    onPressed: () {}, child: Text('Подтвердить пароль'))
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
