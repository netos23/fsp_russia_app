import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_team.freezed.dart';

part 'create_team.g.dart';

@Freezed(
  fromJson: false,
  toJson: true,
)
class CreateTeam with _$CreateTeam {
  factory CreateTeam({
    required int ownerId,
    required String name,
  }) = _CreateTeam;
}
