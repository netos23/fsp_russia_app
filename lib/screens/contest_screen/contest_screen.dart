import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ContestScreen extends StatelessWidget {
  const ContestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text(
          'мероприятия'
      ),
    );
  }
}
