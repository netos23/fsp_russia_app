import 'package:auto_route/auto_route.dart';
import 'package:fsp_russia_app/domain/auth_service.dart';
import 'package:fsp_russia_app/navigation/router.dart';

class AuthGuard extends AutoRouteGuard {


  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final authService = AuthService();
    if (resolver.route.name == const ProfileTab().routeName &&
        !authService.isAuthenticated) {
      // ignore: unawaited_futures
      router.push(
        AuthRoute(
          onResult: (suc) {
            router.markUrlStateForReplace();
            router.removeLast();
            resolver.next(suc);
          },
        ),
      );
    } else {
      resolver.next(true);
    }
  }
}
