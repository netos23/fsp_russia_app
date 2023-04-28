import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_edit_model.freezed.dart';

part 'user_edit_model.g.dart';

@Freezed(
  fromJson: false,
  toJson: true,
)
class UserEditModel with _$UserEditModel {
  factory UserEditModel({
    required String name,
    @JsonKey(name: 'city_id') required String cityId,
  }) = _UserEditModel;
}
