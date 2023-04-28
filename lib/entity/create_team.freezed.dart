// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_team.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateTeam {
  int get ownerId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateTeamCopyWith<CreateTeam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTeamCopyWith<$Res> {
  factory $CreateTeamCopyWith(
          CreateTeam value, $Res Function(CreateTeam) then) =
      _$CreateTeamCopyWithImpl<$Res, CreateTeam>;
  @useResult
  $Res call({int ownerId, String name});
}

/// @nodoc
class _$CreateTeamCopyWithImpl<$Res, $Val extends CreateTeam>
    implements $CreateTeamCopyWith<$Res> {
  _$CreateTeamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerId = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateTeamCopyWith<$Res>
    implements $CreateTeamCopyWith<$Res> {
  factory _$$_CreateTeamCopyWith(
          _$_CreateTeam value, $Res Function(_$_CreateTeam) then) =
      __$$_CreateTeamCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int ownerId, String name});
}

/// @nodoc
class __$$_CreateTeamCopyWithImpl<$Res>
    extends _$CreateTeamCopyWithImpl<$Res, _$_CreateTeam>
    implements _$$_CreateTeamCopyWith<$Res> {
  __$$_CreateTeamCopyWithImpl(
      _$_CreateTeam _value, $Res Function(_$_CreateTeam) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerId = null,
    Object? name = null,
  }) {
    return _then(_$_CreateTeam(
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_CreateTeam implements _CreateTeam {
  _$_CreateTeam({required this.ownerId, required this.name});

  @override
  final int ownerId;
  @override
  final String name;

  @override
  String toString() {
    return 'CreateTeam(ownerId: $ownerId, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateTeam &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ownerId, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateTeamCopyWith<_$_CreateTeam> get copyWith =>
      __$$_CreateTeamCopyWithImpl<_$_CreateTeam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateTeamToJson(
      this,
    );
  }
}

abstract class _CreateTeam implements CreateTeam {
  factory _CreateTeam(
      {required final int ownerId, required final String name}) = _$_CreateTeam;

  @override
  int get ownerId;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CreateTeamCopyWith<_$_CreateTeam> get copyWith =>
      throw _privateConstructorUsedError;
}
