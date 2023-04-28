import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';

part 'auth_model.g.dart';

@Freezed(
  fromJson: false,
  toJson: true,
)
class AuthModel with _$AuthModel {
  factory AuthModel({
    required String email,
    required String password,
  }) = _AuthModel;
}
