import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fsp_russia_app/api/api_clent.dart';
import 'package:fsp_russia_app/screens/calendar_screen/calendar_presenter.dart';
import 'package:provider/provider.dart';

import 'calendar_view.dart';

@RoutePage()
class CalendarScreen extends StatelessWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => CalendarPresenter(
        router: context.router,
        apiClient: ApiClient(
          context.read(),
        ),
      )..init(),
      dispose: (_, p) => p.dispose(),
      child: const CalendarView(),
    );
  }
}
