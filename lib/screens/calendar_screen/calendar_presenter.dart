import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fsp_russia_app/api/api_clent.dart';
import 'package:fsp_russia_app/domain/contest_service.dart';
import 'package:fsp_russia_app/entity/contest_model.dart';
import 'package:table_calendar/src/shared/utils.dart';

import 'calendar_view.dart';

class CalendarPresenter {
  final StackRouter router;

  final ApiClient apiClient;
  final ValueNotifier<CalendarFormat> calendarFormat = ValueNotifier(
    CalendarFormat.month,
  );

  final ValueNotifier<List<ContestModel>?> contests = ValueNotifier(null);

  CalendarPresenter({
    required this.router,
    required this.apiClient,
  });

  void init() {
    ContestService()
        .getContestsModels(
      apiClient,
      ScaffoldMessenger.of(router.navigatorKey.currentContext!),
    )
        .then((value) => contests.value = value);
  }

  void dispose() {
    contests.dispose();
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
