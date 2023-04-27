import 'package:flutter/material.dart';

class CreateContestView extends StatelessWidget {
  const CreateContestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Создание заявки'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text('Create', style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Theme.of(context).colorScheme.onBackground),),
            TextFormField(),
            SizedBox(height: 8,),
            Text('Create', style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Theme.of(context).colorScheme.onBackground),),
            TextFormField(),
            SizedBox(height: 8,),
            Text('Create', style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Theme.of(context).colorScheme.onBackground),),
            TextFormField(),
            SizedBox(height: 8,),
            Text('Create', style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Theme.of(context).colorScheme.onBackground),),
            TextFormField(),
            SizedBox(height: 8,),
            Text('Create', style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Theme.of(context).colorScheme.onBackground),),
            TextFormField(),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {  },
        child: Text('Создать заявку'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
