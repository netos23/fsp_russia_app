import 'package:flutter/material.dart';

class TeamScreenView extends StatelessWidget {
  const TeamScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Моя команда'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(ModalBottomSheetRoute(
                    enableDrag: true,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: 500,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: ListView(
                            children: [
                              ListTile(title: const Text('Username приглашает вас в команду team'), subtitle: SizedBox(
                                width: 50,
                                child: Row(
                                  children: [
                                    IconButton(onPressed: () {}, icon: const Icon(
                                      Icons.check,
                                    )),
                                    IconButton(onPressed: () {}, icon: const Icon(
                                      Icons.close,
                                    ),
                                    ),
                                  ],
                                ),
                              ),),
                            ],
                          ),
                        ),
                      );
                    },
                    isScrollControlled: true));
              },
              icon: const Icon(Icons.notifications)),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Название команды'),
              IconButton(onPressed: () {}, icon: const Icon(Icons.edit))
            ],
          ),
          ListTile(
              title: const Text('username'),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              )),
          ListTile(
              title: const Text('username'),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              )),
          ListTile(
              title: const Text('username'),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              )),
        ],
      ),
    );
  }
}
