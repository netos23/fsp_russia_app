import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fsp_russia_app/navigation/router.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        ContestsTab(),
        CalendarTab(),
        RatingTab(),
        ProfileTab(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              label: 'Соревнования',
              icon: Icon(
                Icons.emoji_events_outlined,
              ),
              activeIcon: Icon(
                Icons.emoji_events,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Календарь',
              icon: Icon(Icons.event_outlined),
              activeIcon: Icon(Icons.event),
            ),
            BottomNavigationBarItem(
              label: 'Рейтинг',
              icon: Icon(Icons.star_outline),
              activeIcon: Icon(Icons.star),
            ),
            BottomNavigationBarItem(
              label: 'Профиль',
              icon: Icon(Icons.person_outline),
              activeIcon: Icon(Icons.person),
            ),
          ],
        );
      },
    );
  }
}
