import 'package:flutter/cupertino.dart';
import 'package:table_calendar/src/shared/utils.dart';

class CalendarPresenter {
  final ValueNotifier<CalendarFormat> calendarFormat = ValueNotifier(
    CalendarFormat.month,
  );

  void init() {}

  void dispose() {
    calendarFormat.dispose();
  }

  void onFormatChanged(CalendarFormat format) {
    calendarFormat.value = format;
  }
}
