// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invite.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Invite _$InviteFromJson(Map<String, dynamic> json) {
  return _Invite.fromJson(json);
}

/// @nodoc
mixin _$Invite {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InviteCopyWith<Invite> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InviteCopyWith<$Res> {
  factory $InviteCopyWith(Invite value, $Res Function(Invite) then) =
      _$InviteCopyWithImpl<$Res, Invite>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$InviteCopyWithImpl<$Res, $Val extends Invite>
    implements $InviteCopyWith<$Res> {
  _$InviteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InviteCopyWith<$Res> implements $InviteCopyWith<$Res> {
  factory _$$_InviteCopyWith(_$_Invite value, $Res Function(_$_Invite) then) =
      __$$_InviteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_InviteCopyWithImpl<$Res>
    extends _$InviteCopyWithImpl<$Res, _$_Invite>
    implements _$$_InviteCopyWith<$Res> {
  __$$_InviteCopyWithImpl(_$_Invite _value, $Res Function(_$_Invite) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_Invite(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Invite implements _Invite {
  _$_Invite({required this.email, required this.password});

  factory _$_Invite.fromJson(Map<String, dynamic> json) =>
      _$$_InviteFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'Invite(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Invite &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InviteCopyWith<_$_Invite> get copyWith =>
      __$$_InviteCopyWithImpl<_$_Invite>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InviteToJson(
      this,
    );
  }
}

abstract class _Invite implements Invite {
  factory _Invite(
      {required final String email,
      required final String password}) = _$_Invite;

  factory _Invite.fromJson(Map<String, dynamic> json) = _$_Invite.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_InviteCopyWith<_$_Invite> get copyWith =>
      throw _privateConstructorUsedError;
}
