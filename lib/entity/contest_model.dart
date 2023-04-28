import 'package:freezed_annotation/freezed_annotation.dart';

part 'contest_model.freezed.dart';

part 'contest_model.g.dart';

@freezed
class ContestModel with _$ContestModel {
  factory ContestModel({
    required bool active,
    required String employer,
    @JsonKey(name: 'organizer_id') required int organizerId,
    required String name,
    @JsonKey(name: 'datetime_start') required String datetimeStart,
    @JsonKey(name: 'image_path') required String imagePath,
    @JsonKey(name: 'datetime_end') required String datetimeEnd,
    @JsonKey(name: 'city_id') required String cityId,
    required bool feeding,
    required String description,
    required int difficulty,
  }) = _ContestModel;

  factory ContestModel.fromJson(Map<String, dynamic> json) =>
      _$ContestModelFromJson(json);
}
