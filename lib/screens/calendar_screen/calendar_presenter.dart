import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/src/shared/utils.dart';

import 'calendar_view.dart';

class CalendarPresenter {
  final StackRouter router;
  final ValueNotifier<CalendarFormat> calendarFormat = ValueNotifier(
    CalendarFormat.month,
  );

  CalendarPresenter({
    required this.router,
  });

  void init() {}

  void dispose() {
    calendarFormat.dispose();
  }

  void onFormatChanged(CalendarFormat format) {
    calendarFormat.value = format;
  }

  void onDaySelected(DateTime old, DateTime next) {
    final context =
        router.parent()!.parentAsStackRouter!.navigatorKey.currentContext!;

    showModalBottomSheet(
      context: context,
      builder: buildSheet,
      enableDrag: true,
      constraints: BoxConstraints.loose(
        Size.fromHeight(
          MediaQuery.of(context).size.height * 0.5,
        ),
      ),
    );
  }
}
