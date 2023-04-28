// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ContestsTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ContestsTabPage(),
      );
    },
    RatingTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RatingTabPage(),
      );
    },
    CalendarTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CalendarTabPage(),
      );
    },
    ProfileTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileTabPage(),
      );
    },
    RegistrationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegistrationScreen(),
      );
    },
    AuthRoute.name: (routeData) {
      final args = routeData.argsAs<AuthRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AuthScreen(
          key: args.key,
          onResult: args.onResult,
        ),
      );
    },
    AnaliticsRoute.name: (routeData) {
      final args = routeData.argsAs<AnaliticsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AnaliticsScreen(
          key: args.key,
          title: args.title,
        ),
      );
    },
    ContestDetailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ContestDetailScreen(),
      );
    },
    ContestRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ContestScreen(),
      );
    },
    RatingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RatingScreen(),
      );
    },
    FavouritesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavouritesScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
    FeedBackRoute.name: (routeData) {
      final args = routeData.argsAs<FeedBackRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FeedBackScreen(
          key: args.key,
          title: args.title,
        ),
      );
    },
    CreateContestRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CreateContestScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    CalendarRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CalendarScreen(),
      );
    },
    TeamRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TeamScreen(),
      );
    },
    MyContestsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyContestsScreen(),
      );
    },
  };
}

/// generated route for
/// [ContestsTabPage]
class ContestsTab extends PageRouteInfo<void> {
  const ContestsTab({List<PageRouteInfo>? children})
      : super(
          ContestsTab.name,
          initialChildren: children,
        );

  static const String name = 'ContestsTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RatingTabPage]
class RatingTab extends PageRouteInfo<void> {
  const RatingTab({List<PageRouteInfo>? children})
      : super(
          RatingTab.name,
          initialChildren: children,
        );

  static const String name = 'RatingTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CalendarTabPage]
class CalendarTab extends PageRouteInfo<void> {
  const CalendarTab({List<PageRouteInfo>? children})
      : super(
          CalendarTab.name,
          initialChildren: children,
        );

  static const String name = 'CalendarTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileTabPage]
class ProfileTab extends PageRouteInfo<void> {
  const ProfileTab({List<PageRouteInfo>? children})
      : super(
          ProfileTab.name,
          initialChildren: children,
        );

  static const String name = 'ProfileTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegistrationScreen]
class RegistrationRoute extends PageRouteInfo<void> {
  const RegistrationRoute({List<PageRouteInfo>? children})
      : super(
          RegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AuthScreen]
class AuthRoute extends PageRouteInfo<AuthRouteArgs> {
  AuthRoute({
    Key? key,
    required void Function(bool) onResult,
    List<PageRouteInfo>? children,
  }) : super(
          AuthRoute.name,
          args: AuthRouteArgs(
            key: key,
            onResult: onResult,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const PageInfo<AuthRouteArgs> page = PageInfo<AuthRouteArgs>(name);
}

class AuthRouteArgs {
  const AuthRouteArgs({
    this.key,
    required this.onResult,
  });

  final Key? key;

  final void Function(bool) onResult;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, onResult: $onResult}';
  }
}

/// generated route for
/// [AnaliticsScreen]
class AnaliticsRoute extends PageRouteInfo<AnaliticsRouteArgs> {
  AnaliticsRoute({
    Key? key,
    required String title,
    List<PageRouteInfo>? children,
  }) : super(
          AnaliticsRoute.name,
          args: AnaliticsRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'AnaliticsRoute';

  static const PageInfo<AnaliticsRouteArgs> page =
      PageInfo<AnaliticsRouteArgs>(name);
}

class AnaliticsRouteArgs {
  const AnaliticsRouteArgs({
    this.key,
    required this.title,
  });

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'AnaliticsRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [ContestDetailScreen]
class ContestDetailRoute extends PageRouteInfo<void> {
  const ContestDetailRoute({List<PageRouteInfo>? children})
      : super(
          ContestDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContestDetailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ContestScreen]
class ContestRoute extends PageRouteInfo<void> {
  const ContestRoute({List<PageRouteInfo>? children})
      : super(
          ContestRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContestRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RatingScreen]
class RatingRoute extends PageRouteInfo<void> {
  const RatingRoute({List<PageRouteInfo>? children})
      : super(
          RatingRoute.name,
          initialChildren: children,
        );

  static const String name = 'RatingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FavouritesScreen]
class FavouritesRoute extends PageRouteInfo<void> {
  const FavouritesRoute({List<PageRouteInfo>? children})
      : super(
          FavouritesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavouritesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FeedBackScreen]
class FeedBackRoute extends PageRouteInfo<FeedBackRouteArgs> {
  FeedBackRoute({
    Key? key,
    required String title,
    List<PageRouteInfo>? children,
  }) : super(
          FeedBackRoute.name,
          args: FeedBackRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'FeedBackRoute';

  static const PageInfo<FeedBackRouteArgs> page =
      PageInfo<FeedBackRouteArgs>(name);
}

class FeedBackRouteArgs {
  const FeedBackRouteArgs({
    this.key,
    required this.title,
  });

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'FeedBackRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [CreateContestScreen]
class CreateContestRoute extends PageRouteInfo<void> {
  const CreateContestRoute({List<PageRouteInfo>? children})
      : super(
          CreateContestRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateContestRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CalendarScreen]
class CalendarRoute extends PageRouteInfo<void> {
  const CalendarRoute({List<PageRouteInfo>? children})
      : super(
          CalendarRoute.name,
          initialChildren: children,
        );

  static const String name = 'CalendarRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TeamScreen]
class TeamRoute extends PageRouteInfo<void> {
  const TeamRoute({List<PageRouteInfo>? children})
      : super(
          TeamRoute.name,
          initialChildren: children,
        );

  static const String name = 'TeamRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyContestsScreen]
class MyContestsRoute extends PageRouteInfo<void> {
  const MyContestsRoute({List<PageRouteInfo>? children})
      : super(
          MyContestsRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyContestsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
