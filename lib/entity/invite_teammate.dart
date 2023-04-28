import 'package:freezed_annotation/freezed_annotation.dart';

part 'invite_teammate.freezed.dart';

part 'invite_teammate.g.dart';

@Freezed(
  fromJson: false,
  toJson: true,
)
class InviteTeammate with _$InviteTeammate {
  factory InviteTeammate({
    required int userId,
    required int teamId,
  }) = _InviteTeammate;
}
