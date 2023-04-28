import 'package:freezed_annotation/freezed_annotation.dart';

part 'accept_invite.freezed.dart';

part 'accept_invite.g.dart';

@Freezed(
  fromJson: false,
  toJson: true,
)
class AcceptInvite with _$AcceptInvite {
  factory AcceptInvite({
    required String email,
    required String password,
  }) = _AcceptInvite;
}
