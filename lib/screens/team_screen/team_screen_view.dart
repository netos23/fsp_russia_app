import 'package:flutter/material.dart';

class TeamScreenView extends StatefulWidget {
  const TeamScreenView({Key? key}) : super(key: key);

  @override
  State<TeamScreenView> createState() => _TeamScreenViewState();
}

class _TeamScreenViewState extends State<TeamScreenView> {
  bool isEditEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Моя команда'),
        centerTitle: true,
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
          IconButton(
              onPressed: () {
              },
              icon: const Icon(Icons.delete)),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isEditEnabled? TextField() : Text('Название команды'),
              IconButton(onPressed: () {
                setState(() {
                  isEditEnabled = !isEditEnabled;
                });
              }, icon: Icon(isEditEnabled? Icons.close: Icons.edit))
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
