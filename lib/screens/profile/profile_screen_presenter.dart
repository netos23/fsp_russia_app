import 'package:auto_route/auto_route.dart';
import 'package:fsp_russia_app/domain/auth_service.dart';
import 'package:fsp_russia_app/navigation/router.dart';

class ProfileScreenPresenter {
  StackRouter router;

  ProfileScreenPresenter({required this.router});

  Future<void> logout() async {
    AuthService().logout();
  }

  Future<void> deleteAccount() async {}

  Future<void> changeProfile() async {}

  Future<bool> changePassword(String password, String passwordRepeat) async {
    return true;
  }

  void routeToMyTeam() {
    router.navigate(const TeamRoute());
  }

  void routeToMyFavorites() {
    router.navigate(const FavouritesRoute());
  }

  void routeToEditProfile() {}

  void routeToMyContests() {
    router.navigate(const MyContestsRoute());
  }

  void routeToAuth() {
    router.navigate(
      AuthRoute(
        onResult: (_) {
          router.pop();
        },
      ),
    );
  }

  void routeToRegister() {
    router.navigate(
      const RegistrationRoute(),
    );
  }
}
