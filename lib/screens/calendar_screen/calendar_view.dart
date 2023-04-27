import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fsp_russia_app/components/theme_switch.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

import 'calendar_presenter.dart';


class CalendarView extends StatefulWidget {
  const CalendarView({Key? key}) : super(key: key);

  @override
  State<CalendarView> createState() => _CalendarViewState();
}

class _CalendarViewState extends State<CalendarView>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller = AnimationController(
    vsync: this,
    duration: const Duration(
      milliseconds: 400,
    ),
  );

  @override
  Widget build(BuildContext context) {
    final prsenter = context.read<CalendarPresenter>();
    final scheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Календарь'),
        actions: const [
          ThemeSwitch(),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: prsenter.calendarFormat,
        builder: (context, value, _) {
          return TableCalendar(
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: DateTime.now(),
            calendarFormat: value,
            headerStyle: HeaderStyle(
              titleTextStyle: TextStyle(
                fontSize: 17.0,
                color: scheme.onBackground,
              ),
            ),
            daysOfWeekStyle: DaysOfWeekStyle(
              weekdayStyle: TextStyle(
                fontSize: 12,
                color: scheme.secondary,
              ),
              weekendStyle: TextStyle(
                fontSize: 12,
                color: scheme.inversePrimary,
              ),
            ),
            onFormatChanged: prsenter.onFormatChanged,
            calendarStyle: CalendarStyle(
              weekNumberTextStyle: TextStyle(
                fontSize: 12,
                color: scheme.secondary,
              ),
              rangeHighlightColor: scheme.primary,
              todayTextStyle: TextStyle(
                color: scheme.onPrimary,
                fontSize: 16.0,
              ),
              todayDecoration: BoxDecoration(
                color: scheme.primary,
                shape: BoxShape.circle,
              ),
              disabledTextStyle: TextStyle(
                color: scheme.secondary,
              ),
              defaultTextStyle: TextStyle(
                color: scheme.onBackground,
              ),
              weekendTextStyle: TextStyle(
                color: scheme.tertiary,
              ),
            ),
            onDaySelected: prsenter.onDaySelected,
          );
        },
      ),
    );
  }
}

Widget buildSheet(BuildContext context) {
  return Column(
    children: [
      const Spacer(),
      Expanded(
        flex: 9,
        child: ListView.separated(
          itemCount: 25,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Hero(
                tag: '1',
                child: Image.network(
                  'http://www.ardecs.com/data/uploads/image/news/acm.jpg',
                ),
              ),
              title: Text('Item $index'),
              subtitle: Text('Item $index'),
              trailing: const Icon(
                true ? Icons.bookmark : Icons.bookmark_border,
                color: Colors.amber,
              ),
            );
          },
          separatorBuilder: (_, __) => const SizedBox(
            height: 10,
          ),
        ),
      ),
    ],
  );
}
