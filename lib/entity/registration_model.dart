import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_model.freezed.dart';

part 'registration_model.g.dart';

@Freezed(
  fromJson: false,
  toJson: true,
)
class RegistrationModel with _$RegistrationModel {
  factory RegistrationModel({
    required String name,
    required String email,
    required String username,
    required String type,
    @JsonKey(name: 'city_id') required String cityId,
    required String password,
  }) = _RegistrationModel;
}
