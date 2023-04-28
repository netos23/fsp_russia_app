import 'package:flutter/material.dart';
import 'package:fsp_russia_app/screens/team_screen/team_screen_presenter.dart';
import 'package:provider/provider.dart';

class TeamScreenView extends StatefulWidget {
  const TeamScreenView({Key? key}) : super(key: key);

  @override
  State<TeamScreenView> createState() => _TeamScreenViewState();
}

class _TeamScreenViewState extends State<TeamScreenView> {
  bool isEditEnabled = false;

  @override
  Widget build(BuildContext context) {
    final presenter = context.read<TeamScreenPresenter>();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Моя команда'),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  ModalBottomSheetRoute(
                      enableDrag: true,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: 500,
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: ListView(
                              children: [
                                ListTile(
                                  title: Text(
                                    'Username приглашает вас в команду team',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onBackground),
                                  ),
                                  subtitle: SizedBox(
                                    width: 50,
                                    child: Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.check,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.close,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      isScrollControlled: true),
                );
              },
              icon: const Icon(Icons.notifications),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
        body: AnimatedBuilder(
          animation: presenter.auth,
          builder: (BuildContext context, Widget? child) {
            if (presenter.auth.model?.teamId == null)
              {
                return ElevatedButton(onPressed: () {
                  presenter.createTeam();
                }, child: Text('Создать команду!'));
              }
              return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    isEditEnabled
                        ? TextField()
                        : Text(
                            'Название команды',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onBackground),
                          ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            isEditEnabled = !isEditEnabled;
                          });
                        },
                        icon: Icon(isEditEnabled ? Icons.close : Icons.edit))
                  ],
                ),
                ListTile(
                    title: Text(
                      'username',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Theme.of(context).colorScheme.onBackground),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    )),
                ListTile(
                    title: Text(
                      'username',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Theme.of(context).colorScheme.onBackground),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    )),
                ListTile(
                    title: Text(
                      'username',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Theme.of(context).colorScheme.onBackground),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    )),
              ],
            );
          },
        ));
  }
}
