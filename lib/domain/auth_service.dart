import 'package:flutter/cupertino.dart';
import 'package:fsp_russia_app/entity/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService extends ChangeNotifier {
  static final AuthService _instance = AuthService._internal();

  factory AuthService() => _instance;

  AuthService._internal();

  String? _accessToken;
  int? _id;

  UserModel? model;

  Future<void> init() async {
    final prfs = await SharedPreferences.getInstance();
    _accessToken = prfs.getString('access');
    _id = prfs.getInt('id');
  }

  void saveTokens(
    String accessToken,
    int id,
  ) {
    _accessToken = accessToken;
    _id = id;
    _saveTokens(accessToken, id);
    notifyListeners();
  }

  String? get accessToken => _accessToken;

  Future<void> _saveTokens(
    String accessToken,
    int id,
  ) async {
    final prfs = await SharedPreferences.getInstance();
    prfs.setString('access', accessToken);
    prfs.setInt('refresh', id);
  }

  Future<void> _deleteTokens() async {
    final prfs = await SharedPreferences.getInstance();
    prfs.remove('access');
    prfs.remove('refresh');
  }

  bool get isAuthenticated => _accessToken != null && _id != null;

  void logout() {
    _accessToken = null;
    _id = null;
    _deleteTokens();
    notifyListeners();
  }

  int? get id => _id;
}
