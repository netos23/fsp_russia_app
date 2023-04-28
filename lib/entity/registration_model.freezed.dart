// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegistrationModel {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_id')
  String get cityId => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationModelCopyWith<RegistrationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationModelCopyWith<$Res> {
  factory $RegistrationModelCopyWith(
          RegistrationModel value, $Res Function(RegistrationModel) then) =
      _$RegistrationModelCopyWithImpl<$Res, RegistrationModel>;
  @useResult
  $Res call(
      {String name,
      String email,
      String username,
      String type,
      @JsonKey(name: 'city_id') String cityId,
      String password});
}

/// @nodoc
class _$RegistrationModelCopyWithImpl<$Res, $Val extends RegistrationModel>
    implements $RegistrationModelCopyWith<$Res> {
  _$RegistrationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? username = null,
    Object? type = null,
    Object? cityId = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegistrationModelCopyWith<$Res>
    implements $RegistrationModelCopyWith<$Res> {
  factory _$$_RegistrationModelCopyWith(_$_RegistrationModel value,
          $Res Function(_$_RegistrationModel) then) =
      __$$_RegistrationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String email,
      String username,
      String type,
      @JsonKey(name: 'city_id') String cityId,
      String password});
}

/// @nodoc
class __$$_RegistrationModelCopyWithImpl<$Res>
    extends _$RegistrationModelCopyWithImpl<$Res, _$_RegistrationModel>
    implements _$$_RegistrationModelCopyWith<$Res> {
  __$$_RegistrationModelCopyWithImpl(
      _$_RegistrationModel _value, $Res Function(_$_RegistrationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? username = null,
    Object? type = null,
    Object? cityId = null,
    Object? password = null,
  }) {
    return _then(_$_RegistrationModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_RegistrationModel implements _RegistrationModel {
  _$_RegistrationModel(
      {required this.name,
      required this.email,
      required this.username,
      required this.type,
      @JsonKey(name: 'city_id') required this.cityId,
      required this.password});

  @override
  final String name;
  @override
  final String email;
  @override
  final String username;
  @override
  final String type;
  @override
  @JsonKey(name: 'city_id')
  final String cityId;
  @override
  final String password;

  @override
  String toString() {
    return 'RegistrationModel(name: $name, email: $email, username: $username, type: $type, cityId: $cityId, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegistrationModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, username, type, cityId, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegistrationModelCopyWith<_$_RegistrationModel> get copyWith =>
      __$$_RegistrationModelCopyWithImpl<_$_RegistrationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegistrationModelToJson(
      this,
    );
  }
}

abstract class _RegistrationModel implements RegistrationModel {
  factory _RegistrationModel(
      {required final String name,
      required final String email,
      required final String username,
      required final String type,
      @JsonKey(name: 'city_id') required final String cityId,
      required final String password}) = _$_RegistrationModel;

  @override
  String get name;
  @override
  String get email;
  @override
  String get username;
  @override
  String get type;
  @override
  @JsonKey(name: 'city_id')
  String get cityId;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_RegistrationModelCopyWith<_$_RegistrationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
