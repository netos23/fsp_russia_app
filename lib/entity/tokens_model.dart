import 'package:freezed_annotation/freezed_annotation.dart';

part 'tokens_model.freezed.dart';

part 'tokens_model.g.dart';

@freezed
class TokensModel with _$TokensModel {
  const factory TokensModel({
    required int id,
    @JsonKey(name: 'access_token') required String accessToken,
  }) = _TokensModel;

  factory TokensModel.fromJson(Map<String, Object?> json) =>
      _$TokensModelFromJson(json);
}
