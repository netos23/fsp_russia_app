import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

enum UserRole {
  sport,
  sponsor,
  fsp,
  admin,
}

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    int? teamId,
    required String name,
    required int rating,
    required Set<int> type,
    String? cityId,
    required String email,
    required String username,
    required int id,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
