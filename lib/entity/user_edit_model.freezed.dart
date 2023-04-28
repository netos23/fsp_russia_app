// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_edit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEditModel {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_id')
  String get cityId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserEditModelCopyWith<UserEditModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEditModelCopyWith<$Res> {
  factory $UserEditModelCopyWith(
          UserEditModel value, $Res Function(UserEditModel) then) =
      _$UserEditModelCopyWithImpl<$Res, UserEditModel>;
  @useResult
  $Res call({String name, @JsonKey(name: 'city_id') String cityId});
}

/// @nodoc
class _$UserEditModelCopyWithImpl<$Res, $Val extends UserEditModel>
    implements $UserEditModelCopyWith<$Res> {
  _$UserEditModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? cityId = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserEditModelCopyWith<$Res>
    implements $UserEditModelCopyWith<$Res> {
  factory _$$_UserEditModelCopyWith(
          _$_UserEditModel value, $Res Function(_$_UserEditModel) then) =
      __$$_UserEditModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, @JsonKey(name: 'city_id') String cityId});
}

/// @nodoc
class __$$_UserEditModelCopyWithImpl<$Res>
    extends _$UserEditModelCopyWithImpl<$Res, _$_UserEditModel>
    implements _$$_UserEditModelCopyWith<$Res> {
  __$$_UserEditModelCopyWithImpl(
      _$_UserEditModel _value, $Res Function(_$_UserEditModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? cityId = null,
  }) {
    return _then(_$_UserEditModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_UserEditModel implements _UserEditModel {
  _$_UserEditModel(
      {required this.name, @JsonKey(name: 'city_id') required this.cityId});

  @override
  final String name;
  @override
  @JsonKey(name: 'city_id')
  final String cityId;

  @override
  String toString() {
    return 'UserEditModel(name: $name, cityId: $cityId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserEditModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cityId, cityId) || other.cityId == cityId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, cityId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserEditModelCopyWith<_$_UserEditModel> get copyWith =>
      __$$_UserEditModelCopyWithImpl<_$_UserEditModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserEditModelToJson(
      this,
    );
  }
}

abstract class _UserEditModel implements UserEditModel {
  factory _UserEditModel(
          {required final String name,
          @JsonKey(name: 'city_id') required final String cityId}) =
      _$_UserEditModel;

  @override
  String get name;
  @override
  @JsonKey(name: 'city_id')
  String get cityId;
  @override
  @JsonKey(ignore: true)
  _$$_UserEditModelCopyWith<_$_UserEditModel> get copyWith =>
      throw _privateConstructorUsedError;
}
