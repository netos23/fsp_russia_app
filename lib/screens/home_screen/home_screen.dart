import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fsp_russia_app/navigation/router.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return kIsWeb
        ? const _WebPage()
        : const _MobilePage();
  }
}

class _MobilePage extends StatelessWidget {
  const _MobilePage({
    super.key,
  });

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
          return NavigationBar(
            selectedIndex: tabsRouter.activeIndex,
            onDestinationSelected: tabsRouter.setActiveIndex,
            destinations: const [
              NavigationDestination(
                label: 'Соревнования',
                icon: Icon(
                  Icons.emoji_events_outlined,
                ),
              ),
              NavigationDestination(
                label: 'Календарь',
                icon: Icon(Icons.event_outlined),
              ),
              NavigationDestination(
                label: 'Рейтинг',
                icon: Icon(Icons.star_outline),
              ),
              NavigationDestination(
                label: 'Профиль',
                icon: Icon(Icons.person_outline),
              ),
            ],
          );
        },
      );
  }
}

class _WebPage extends StatelessWidget {
  const _WebPage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return AutoRouter(
      builder: (context, child) {
        const tabs = [
          ContestsTab(),
          CalendarTab(),
          RatingTab(),
          ProfileTab(),
        ];

        // we check for active route index by using
        // router.isRouteActive method
        var activeIndex = tabs.indexWhere(
              (d) => context.router.isRouteActive(d.routeName),
        );
        // there might be no active route until router is mounted
        // so we play safe
        if (activeIndex == -1) {
          activeIndex = 0;
        }
        return Row(
          children: [
            NavigationRail(
              destinations: const [
                NavigationRailDestination(
                  label: Text('Соревнования'),
                  icon: Icon(
                    Icons.emoji_events_outlined,
                  ),
                ),
                NavigationRailDestination(
                  label: Text('Календарь'),
                  icon: Icon(Icons.event_outlined),
                ),
                NavigationRailDestination(
                  label: Text('Рейтинг'),
                  icon: Icon(Icons.star_outline),
                ),
                NavigationRailDestination(
                  label: Text('Профиль'),
                  icon: Icon(Icons.person_outline),
                ),
              ],
              selectedIndex: activeIndex,
              onDestinationSelected: (index) {
                // use navigate instead of push so you won't have
                // many useless route stacks
                context.navigateTo(tabs[index]);
              },
            ),
            // child is the rendered route stack
            Expanded(child: child)
          ],
        );
      },
    );
  }
}

