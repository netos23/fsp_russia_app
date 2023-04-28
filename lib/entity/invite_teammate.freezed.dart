// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invite_teammate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InviteTeammate {
  int get userId => throw _privateConstructorUsedError;
  int get teamId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InviteTeammateCopyWith<InviteTeammate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InviteTeammateCopyWith<$Res> {
  factory $InviteTeammateCopyWith(
          InviteTeammate value, $Res Function(InviteTeammate) then) =
      _$InviteTeammateCopyWithImpl<$Res, InviteTeammate>;
  @useResult
  $Res call({int userId, int teamId});
}

/// @nodoc
class _$InviteTeammateCopyWithImpl<$Res, $Val extends InviteTeammate>
    implements $InviteTeammateCopyWith<$Res> {
  _$InviteTeammateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? teamId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InviteTeammateCopyWith<$Res>
    implements $InviteTeammateCopyWith<$Res> {
  factory _$$_InviteTeammateCopyWith(
          _$_InviteTeammate value, $Res Function(_$_InviteTeammate) then) =
      __$$_InviteTeammateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, int teamId});
}

/// @nodoc
class __$$_InviteTeammateCopyWithImpl<$Res>
    extends _$InviteTeammateCopyWithImpl<$Res, _$_InviteTeammate>
    implements _$$_InviteTeammateCopyWith<$Res> {
  __$$_InviteTeammateCopyWithImpl(
      _$_InviteTeammate _value, $Res Function(_$_InviteTeammate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? teamId = null,
  }) {
    return _then(_$_InviteTeammate(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_InviteTeammate implements _InviteTeammate {
  _$_InviteTeammate({required this.userId, required this.teamId});

  @override
  final int userId;
  @override
  final int teamId;

  @override
  String toString() {
    return 'InviteTeammate(userId: $userId, teamId: $teamId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InviteTeammate &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.teamId, teamId) || other.teamId == teamId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, teamId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InviteTeammateCopyWith<_$_InviteTeammate> get copyWith =>
      __$$_InviteTeammateCopyWithImpl<_$_InviteTeammate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InviteTeammateToJson(
      this,
    );
  }
}

abstract class _InviteTeammate implements InviteTeammate {
  factory _InviteTeammate(
      {required final int userId,
      required final int teamId}) = _$_InviteTeammate;

  @override
  int get userId;
  @override
  int get teamId;
  @override
  @JsonKey(ignore: true)
  _$$_InviteTeammateCopyWith<_$_InviteTeammate> get copyWith =>
      throw _privateConstructorUsedError;
}
