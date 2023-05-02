// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'welcome_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WelcomeStates {
  int get page => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WelcomeStatesCopyWith<WelcomeStates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WelcomeStatesCopyWith<$Res> {
  factory $WelcomeStatesCopyWith(
          WelcomeStates value, $Res Function(WelcomeStates) then) =
      _$WelcomeStatesCopyWithImpl<$Res, WelcomeStates>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class _$WelcomeStatesCopyWithImpl<$Res, $Val extends WelcomeStates>
    implements $WelcomeStatesCopyWith<$Res> {
  _$WelcomeStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WelcomeStatesCopyWith<$Res>
    implements $WelcomeStatesCopyWith<$Res> {
  factory _$$_WelcomeStatesCopyWith(
          _$_WelcomeStates value, $Res Function(_$_WelcomeStates) then) =
      __$$_WelcomeStatesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$_WelcomeStatesCopyWithImpl<$Res>
    extends _$WelcomeStatesCopyWithImpl<$Res, _$_WelcomeStates>
    implements _$$_WelcomeStatesCopyWith<$Res> {
  __$$_WelcomeStatesCopyWithImpl(
      _$_WelcomeStates _value, $Res Function(_$_WelcomeStates) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$_WelcomeStates(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_WelcomeStates implements _WelcomeStates {
  const _$_WelcomeStates({this.page = 0});

  @override
  @JsonKey()
  final int page;

  @override
  String toString() {
    return 'WelcomeStates(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WelcomeStates &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WelcomeStatesCopyWith<_$_WelcomeStates> get copyWith =>
      __$$_WelcomeStatesCopyWithImpl<_$_WelcomeStates>(this, _$identity);
}

abstract class _WelcomeStates implements WelcomeStates {
  const factory _WelcomeStates({final int page}) = _$_WelcomeStates;

  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$_WelcomeStatesCopyWith<_$_WelcomeStates> get copyWith =>
      throw _privateConstructorUsedError;
}
