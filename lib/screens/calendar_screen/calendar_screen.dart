import 'package:flutter/material.dart';
import 'package:fsp_russia_app/screens/calendar_screen/calendar_presenter.dart';
import 'package:provider/provider.dart';

import 'calendar_view.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => CalendarPresenter(),
      dispose: (_, p) => p.dispose(),
      child: const CalendarView(),
    );
  }
}
