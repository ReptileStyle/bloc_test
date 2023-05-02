// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) onPasswordChanged,
    required TResult Function(String value) onEmailChanged,
    required TResult Function() onSignInClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? onPasswordChanged,
    TResult? Function(String value)? onEmailChanged,
    TResult? Function()? onSignInClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? onPasswordChanged,
    TResult Function(String value)? onEmailChanged,
    TResult Function()? onSignInClick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnPasswordChanged value) onPasswordChanged,
    required TResult Function(OnEmailChanged value) onEmailChanged,
    required TResult Function(OnSignInClick value) onSignInClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnPasswordChanged value)? onPasswordChanged,
    TResult? Function(OnEmailChanged value)? onEmailChanged,
    TResult? Function(OnSignInClick value)? onSignInClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnPasswordChanged value)? onPasswordChanged,
    TResult Function(OnEmailChanged value)? onEmailChanged,
    TResult Function(OnSignInClick value)? onSignInClick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnPasswordChangedCopyWith<$Res> {
  factory _$$OnPasswordChangedCopyWith(
          _$OnPasswordChanged value, $Res Function(_$OnPasswordChanged) then) =
      __$$OnPasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$OnPasswordChangedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$OnPasswordChanged>
    implements _$$OnPasswordChangedCopyWith<$Res> {
  __$$OnPasswordChangedCopyWithImpl(
      _$OnPasswordChanged _value, $Res Function(_$OnPasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$OnPasswordChanged(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnPasswordChanged implements OnPasswordChanged {
  const _$OnPasswordChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'SignInEvent.onPasswordChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnPasswordChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnPasswordChangedCopyWith<_$OnPasswordChanged> get copyWith =>
      __$$OnPasswordChangedCopyWithImpl<_$OnPasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) onPasswordChanged,
    required TResult Function(String value) onEmailChanged,
    required TResult Function() onSignInClick,
  }) {
    return onPasswordChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? onPasswordChanged,
    TResult? Function(String value)? onEmailChanged,
    TResult? Function()? onSignInClick,
  }) {
    return onPasswordChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? onPasswordChanged,
    TResult Function(String value)? onEmailChanged,
    TResult Function()? onSignInClick,
    required TResult orElse(),
  }) {
    if (onPasswordChanged != null) {
      return onPasswordChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnPasswordChanged value) onPasswordChanged,
    required TResult Function(OnEmailChanged value) onEmailChanged,
    required TResult Function(OnSignInClick value) onSignInClick,
  }) {
    return onPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnPasswordChanged value)? onPasswordChanged,
    TResult? Function(OnEmailChanged value)? onEmailChanged,
    TResult? Function(OnSignInClick value)? onSignInClick,
  }) {
    return onPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnPasswordChanged value)? onPasswordChanged,
    TResult Function(OnEmailChanged value)? onEmailChanged,
    TResult Function(OnSignInClick value)? onSignInClick,
    required TResult orElse(),
  }) {
    if (onPasswordChanged != null) {
      return onPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class OnPasswordChanged implements SignInEvent {
  const factory OnPasswordChanged(final String value) = _$OnPasswordChanged;

  String get value;
  @JsonKey(ignore: true)
  _$$OnPasswordChangedCopyWith<_$OnPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnEmailChangedCopyWith<$Res> {
  factory _$$OnEmailChangedCopyWith(
          _$OnEmailChanged value, $Res Function(_$OnEmailChanged) then) =
      __$$OnEmailChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$OnEmailChangedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$OnEmailChanged>
    implements _$$OnEmailChangedCopyWith<$Res> {
  __$$OnEmailChangedCopyWithImpl(
      _$OnEmailChanged _value, $Res Function(_$OnEmailChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$OnEmailChanged(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnEmailChanged implements OnEmailChanged {
  const _$OnEmailChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'SignInEvent.onEmailChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnEmailChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnEmailChangedCopyWith<_$OnEmailChanged> get copyWith =>
      __$$OnEmailChangedCopyWithImpl<_$OnEmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) onPasswordChanged,
    required TResult Function(String value) onEmailChanged,
    required TResult Function() onSignInClick,
  }) {
    return onEmailChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? onPasswordChanged,
    TResult? Function(String value)? onEmailChanged,
    TResult? Function()? onSignInClick,
  }) {
    return onEmailChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? onPasswordChanged,
    TResult Function(String value)? onEmailChanged,
    TResult Function()? onSignInClick,
    required TResult orElse(),
  }) {
    if (onEmailChanged != null) {
      return onEmailChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnPasswordChanged value) onPasswordChanged,
    required TResult Function(OnEmailChanged value) onEmailChanged,
    required TResult Function(OnSignInClick value) onSignInClick,
  }) {
    return onEmailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnPasswordChanged value)? onPasswordChanged,
    TResult? Function(OnEmailChanged value)? onEmailChanged,
    TResult? Function(OnSignInClick value)? onSignInClick,
  }) {
    return onEmailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnPasswordChanged value)? onPasswordChanged,
    TResult Function(OnEmailChanged value)? onEmailChanged,
    TResult Function(OnSignInClick value)? onSignInClick,
    required TResult orElse(),
  }) {
    if (onEmailChanged != null) {
      return onEmailChanged(this);
    }
    return orElse();
  }
}

abstract class OnEmailChanged implements SignInEvent {
  const factory OnEmailChanged(final String value) = _$OnEmailChanged;

  String get value;
  @JsonKey(ignore: true)
  _$$OnEmailChangedCopyWith<_$OnEmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSignInClickCopyWith<$Res> {
  factory _$$OnSignInClickCopyWith(
          _$OnSignInClick value, $Res Function(_$OnSignInClick) then) =
      __$$OnSignInClickCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnSignInClickCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$OnSignInClick>
    implements _$$OnSignInClickCopyWith<$Res> {
  __$$OnSignInClickCopyWithImpl(
      _$OnSignInClick _value, $Res Function(_$OnSignInClick) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnSignInClick implements OnSignInClick {
  const _$OnSignInClick();

  @override
  String toString() {
    return 'SignInEvent.onSignInClick()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnSignInClick);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) onPasswordChanged,
    required TResult Function(String value) onEmailChanged,
    required TResult Function() onSignInClick,
  }) {
    return onSignInClick();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? onPasswordChanged,
    TResult? Function(String value)? onEmailChanged,
    TResult? Function()? onSignInClick,
  }) {
    return onSignInClick?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? onPasswordChanged,
    TResult Function(String value)? onEmailChanged,
    TResult Function()? onSignInClick,
    required TResult orElse(),
  }) {
    if (onSignInClick != null) {
      return onSignInClick();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnPasswordChanged value) onPasswordChanged,
    required TResult Function(OnEmailChanged value) onEmailChanged,
    required TResult Function(OnSignInClick value) onSignInClick,
  }) {
    return onSignInClick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnPasswordChanged value)? onPasswordChanged,
    TResult? Function(OnEmailChanged value)? onEmailChanged,
    TResult? Function(OnSignInClick value)? onSignInClick,
  }) {
    return onSignInClick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnPasswordChanged value)? onPasswordChanged,
    TResult Function(OnEmailChanged value)? onEmailChanged,
    TResult Function(OnSignInClick value)? onSignInClick,
    required TResult orElse(),
  }) {
    if (onSignInClick != null) {
      return onSignInClick(this);
    }
    return orElse();
  }
}

abstract class OnSignInClick implements SignInEvent {
  const factory OnSignInClick() = _$OnSignInClick;
}
