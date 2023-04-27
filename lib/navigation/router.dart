import 'package:auto_route/auto_route.dart';
import 'package:fsp_russia_app/screens/calendar_screen/calendar_screen.dart';
import 'package:fsp_russia_app/screens/contest_screen/contest_screen.dart';
import 'package:fsp_russia_app/screens/feed_back_screen/feed_back_screen.dart';
import 'package:fsp_russia_app/screens/home_screen/home_screen.dart';
import 'package:fsp_russia_app/screens/rating_screen/rating_screen.dart';
import 'package:fsp_russia_app/screens/auth/auth_screen.dart';
import 'package:fsp_russia_app/screens/profile/profile_screen.dart';
import 'package:fsp_russia_app/screens/contest_detail/contest_detail.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: HomeRoute.page,
          children: [
            AutoRoute(
              path: 'contests',
              page: ContestsTab.page,
              maintainState: true,
              children: [
                AutoRoute(
                  page: ContestRoute.page,
                  initial: true,
                ),
              ],
            ),
            AutoRoute(
              path: 'calendar',
              page: CalendarTab.page,
              maintainState: true,
              children: [
                AutoRoute(
                  page: CalendarRoute.page,
                  initial: true,
                ),
              ],
            ),
            AutoRoute(
              path: 'rating',
              page: RatingTab.page,
              maintainState: true,
              children: [
                AutoRoute(
                  page: RatingRoute.page,
                  initial: true,
                ),
              ],
            ),
            AutoRoute(
              path: 'profile',
              page: ProfileTab.page,
              maintainState: true,
              children: [
                AutoRoute(
                  initial: true,
                  page: ProfileRoute.page,
                ),
              ],
            ),
          ],
        ),
      ];
}

@RoutePage(name: 'ContestsTab')
class ContestsTabPage extends AutoRouter {
  const ContestsTabPage({super.key});
}

@RoutePage(name: 'RatingTab')
class RatingTabPage extends AutoRouter {
  const RatingTabPage({super.key});
}

@RoutePage(name: 'CalendarTab')
class CalendarTabPage extends AutoRouter {
  const CalendarTabPage({super.key});
}

@RoutePage(name: 'ProfileTab')
class ProfileTabPage extends AutoRouter {
  const ProfileTabPage({super.key});
}
