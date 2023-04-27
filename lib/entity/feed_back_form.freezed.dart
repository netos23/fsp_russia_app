// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_back_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FeedBackForm {
  String get description => throw _privateConstructorUsedError;
  Object? Function(FeedBackModel) get selector =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String description, int? Function(FeedBackModel) selector)
        ratingForm,
    required TResult Function(String description, int length,
            String? Function(FeedBackModel) selector)
        textForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String description, int? Function(FeedBackModel) selector)?
        ratingForm,
    TResult? Function(String description, int length,
            String? Function(FeedBackModel) selector)?
        textForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String description, int? Function(FeedBackModel) selector)?
        ratingForm,
    TResult Function(String description, int length,
            String? Function(FeedBackModel) selector)?
        textForm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Rating value) ratingForm,
    required TResult Function(TextForm value) textForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Rating value)? ratingForm,
    TResult? Function(TextForm value)? textForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Rating value)? ratingForm,
    TResult Function(TextForm value)? textForm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeedBackFormCopyWith<FeedBackForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedBackFormCopyWith<$Res> {
  factory $FeedBackFormCopyWith(
          FeedBackForm value, $Res Function(FeedBackForm) then) =
      _$FeedBackFormCopyWithImpl<$Res, FeedBackForm>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class _$FeedBackFormCopyWithImpl<$Res, $Val extends FeedBackForm>
    implements $FeedBackFormCopyWith<$Res> {
  _$FeedBackFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingCopyWith<$Res> implements $FeedBackFormCopyWith<$Res> {
  factory _$$RatingCopyWith(_$Rating value, $Res Function(_$Rating) then) =
      __$$RatingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, int? Function(FeedBackModel) selector});
}

/// @nodoc
class __$$RatingCopyWithImpl<$Res>
    extends _$FeedBackFormCopyWithImpl<$Res, _$Rating>
    implements _$$RatingCopyWith<$Res> {
  __$$RatingCopyWithImpl(_$Rating _value, $Res Function(_$Rating) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? selector = null,
  }) {
    return _then(_$Rating(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      selector: null == selector
          ? _value.selector
          : selector // ignore: cast_nullable_to_non_nullable
              as int? Function(FeedBackModel),
    ));
  }
}

/// @nodoc

class _$Rating implements Rating {
  _$Rating({required this.description, required this.selector});

  @override
  final String description;
  @override
  final int? Function(FeedBackModel) selector;

  @override
  String toString() {
    return 'FeedBackForm.ratingForm(description: $description, selector: $selector)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Rating &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.selector, selector) ||
                other.selector == selector));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description, selector);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingCopyWith<_$Rating> get copyWith =>
      __$$RatingCopyWithImpl<_$Rating>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String description, int? Function(FeedBackModel) selector)
        ratingForm,
    required TResult Function(String description, int length,
            String? Function(FeedBackModel) selector)
        textForm,
  }) {
    return ratingForm(description, selector);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String description, int? Function(FeedBackModel) selector)?
        ratingForm,
    TResult? Function(String description, int length,
            String? Function(FeedBackModel) selector)?
        textForm,
  }) {
    return ratingForm?.call(description, selector);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String description, int? Function(FeedBackModel) selector)?
        ratingForm,
    TResult Function(String description, int length,
            String? Function(FeedBackModel) selector)?
        textForm,
    required TResult orElse(),
  }) {
    if (ratingForm != null) {
      return ratingForm(description, selector);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Rating value) ratingForm,
    required TResult Function(TextForm value) textForm,
  }) {
    return ratingForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Rating value)? ratingForm,
    TResult? Function(TextForm value)? textForm,
  }) {
    return ratingForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Rating value)? ratingForm,
    TResult Function(TextForm value)? textForm,
    required TResult orElse(),
  }) {
    if (ratingForm != null) {
      return ratingForm(this);
    }
    return orElse();
  }
}

abstract class Rating implements FeedBackForm {
  factory Rating(
      {required final String description,
      required final int? Function(FeedBackModel) selector}) = _$Rating;

  @override
  String get description;
  @override
  int? Function(FeedBackModel) get selector;
  @override
  @JsonKey(ignore: true)
  _$$RatingCopyWith<_$Rating> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TextFormCopyWith<$Res>
    implements $FeedBackFormCopyWith<$Res> {
  factory _$$TextFormCopyWith(
          _$TextForm value, $Res Function(_$TextForm) then) =
      __$$TextFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String description,
      int length,
      String? Function(FeedBackModel) selector});
}

/// @nodoc
class __$$TextFormCopyWithImpl<$Res>
    extends _$FeedBackFormCopyWithImpl<$Res, _$TextForm>
    implements _$$TextFormCopyWith<$Res> {
  __$$TextFormCopyWithImpl(_$TextForm _value, $Res Function(_$TextForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? length = null,
    Object? selector = null,
  }) {
    return _then(_$TextForm(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      selector: null == selector
          ? _value.selector
          : selector // ignore: cast_nullable_to_non_nullable
              as String? Function(FeedBackModel),
    ));
  }
}

/// @nodoc

class _$TextForm implements TextForm {
  _$TextForm(
      {required this.description,
      required this.length,
      required this.selector});

  @override
  final String description;
  @override
  final int length;
  @override
  final String? Function(FeedBackModel) selector;

  @override
  String toString() {
    return 'FeedBackForm.textForm(description: $description, length: $length, selector: $selector)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextForm &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.selector, selector) ||
                other.selector == selector));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description, length, selector);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextFormCopyWith<_$TextForm> get copyWith =>
      __$$TextFormCopyWithImpl<_$TextForm>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String description, int? Function(FeedBackModel) selector)
        ratingForm,
    required TResult Function(String description, int length,
            String? Function(FeedBackModel) selector)
        textForm,
  }) {
    return textForm(description, length, selector);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String description, int? Function(FeedBackModel) selector)?
        ratingForm,
    TResult? Function(String description, int length,
            String? Function(FeedBackModel) selector)?
        textForm,
  }) {
    return textForm?.call(description, length, selector);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String description, int? Function(FeedBackModel) selector)?
        ratingForm,
    TResult Function(String description, int length,
            String? Function(FeedBackModel) selector)?
        textForm,
    required TResult orElse(),
  }) {
    if (textForm != null) {
      return textForm(description, length, selector);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Rating value) ratingForm,
    required TResult Function(TextForm value) textForm,
  }) {
    return textForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Rating value)? ratingForm,
    TResult? Function(TextForm value)? textForm,
  }) {
    return textForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Rating value)? ratingForm,
    TResult Function(TextForm value)? textForm,
    required TResult orElse(),
  }) {
    if (textForm != null) {
      return textForm(this);
    }
    return orElse();
  }
}

abstract class TextForm implements FeedBackForm {
  factory TextForm(
      {required final String description,
      required final int length,
      required final String? Function(FeedBackModel) selector}) = _$TextForm;

  @override
  String get description;
  int get length;
  @override
  String? Function(FeedBackModel) get selector;
  @override
  @JsonKey(ignore: true)
  _$$TextFormCopyWith<_$TextForm> get copyWith =>
      throw _privateConstructorUsedError;
}
