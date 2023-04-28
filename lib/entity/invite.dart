import 'package:freezed_annotation/freezed_annotation.dart';

part 'invite.freezed.dart';

part 'invite.g.dart';

@Freezed(
  fromJson: true,
  toJson: true,
)
class Invite with _$Invite {
  factory Invite({
    required String email,
    required String password,
  }) = _Invite;

  factory Invite.fromJson(Map<String, dynamic> json) => _$InviteFromJson(json);
}
