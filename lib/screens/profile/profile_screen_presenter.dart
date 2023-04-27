import 'package:auto_route/auto_route.dart';
import 'package:fsp_russia_app/navigation/router.dart';

class ProfileScreenPresenter {
  StackRouter router;

  ProfileScreenPresenter({required this.router});

  Future<void> logout() async {}
  Future<void> deleteAccount() async {}
  Future<void> changeProfile() async {}
  Future<bool> changePassword(String password, String passwordRepeat) async {
    return true;
  }

  void routeToMyTeam() {
    router.navigate(TeamRoute());
  }

  void routeToMyFavorites() {
    router.navigate(FavouritesRoute());
  }

  void routeToEditProfile() {
  }
}
