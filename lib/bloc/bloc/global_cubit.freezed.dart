// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'global_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GlobalState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authorized,
    required TResult Function() unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GlobalState value) loading,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_UnAuthorized value) unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GlobalState value)? loading,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GlobalState value)? loading,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalStateCopyWith<$Res> {
  factory $GlobalStateCopyWith(
          GlobalState value, $Res Function(GlobalState) then) =
      _$GlobalStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GlobalStateCopyWithImpl<$Res> implements $GlobalStateCopyWith<$Res> {
  _$GlobalStateCopyWithImpl(this._value, this._then);

  final GlobalState _value;
  // ignore: unused_field
  final $Res Function(GlobalState) _then;
}

/// @nodoc
abstract class _$$_GlobalStateCopyWith<$Res> {
  factory _$$_GlobalStateCopyWith(
          _$_GlobalState value, $Res Function(_$_GlobalState) then) =
      __$$_GlobalStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GlobalStateCopyWithImpl<$Res> extends _$GlobalStateCopyWithImpl<$Res>
    implements _$$_GlobalStateCopyWith<$Res> {
  __$$_GlobalStateCopyWithImpl(
      _$_GlobalState _value, $Res Function(_$_GlobalState) _then)
      : super(_value, (v) => _then(v as _$_GlobalState));

  @override
  _$_GlobalState get _value => super._value as _$_GlobalState;
}

/// @nodoc

class _$_GlobalState implements _GlobalState {
  const _$_GlobalState();

  @override
  String toString() {
    return 'GlobalState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GlobalState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authorized,
    required TResult Function() unauthorized,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GlobalState value) loading,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_UnAuthorized value) unauthorized,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GlobalState value)? loading,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unauthorized,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GlobalState value)? loading,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _GlobalState implements GlobalState {
  const factory _GlobalState() = _$_GlobalState;
}

/// @nodoc
abstract class _$$_AuthorizedCopyWith<$Res> {
  factory _$$_AuthorizedCopyWith(
          _$_Authorized value, $Res Function(_$_Authorized) then) =
      __$$_AuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthorizedCopyWithImpl<$Res> extends _$GlobalStateCopyWithImpl<$Res>
    implements _$$_AuthorizedCopyWith<$Res> {
  __$$_AuthorizedCopyWithImpl(
      _$_Authorized _value, $Res Function(_$_Authorized) _then)
      : super(_value, (v) => _then(v as _$_Authorized));

  @override
  _$_Authorized get _value => super._value as _$_Authorized;
}

/// @nodoc

class _$_Authorized implements _Authorized {
  const _$_Authorized();

  @override
  String toString() {
    return 'GlobalState.authorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Authorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authorized,
    required TResult Function() unauthorized,
  }) {
    return authorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
  }) {
    return authorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GlobalState value) loading,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_UnAuthorized value) unauthorized,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GlobalState value)? loading,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unauthorized,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GlobalState value)? loading,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class _Authorized implements GlobalState {
  const factory _Authorized() = _$_Authorized;
}

/// @nodoc
abstract class _$$_UnAuthorizedCopyWith<$Res> {
  factory _$$_UnAuthorizedCopyWith(
          _$_UnAuthorized value, $Res Function(_$_UnAuthorized) then) =
      __$$_UnAuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnAuthorizedCopyWithImpl<$Res>
    extends _$GlobalStateCopyWithImpl<$Res>
    implements _$$_UnAuthorizedCopyWith<$Res> {
  __$$_UnAuthorizedCopyWithImpl(
      _$_UnAuthorized _value, $Res Function(_$_UnAuthorized) _then)
      : super(_value, (v) => _then(v as _$_UnAuthorized));

  @override
  _$_UnAuthorized get _value => super._value as _$_UnAuthorized;
}

/// @nodoc

class _$_UnAuthorized implements _UnAuthorized {
  const _$_UnAuthorized();

  @override
  String toString() {
    return 'GlobalState.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnAuthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authorized,
    required TResult Function() unauthorized,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GlobalState value) loading,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_UnAuthorized value) unauthorized,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GlobalState value)? loading,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unauthorized,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GlobalState value)? loading,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _UnAuthorized implements GlobalState {
  const factory _UnAuthorized() = _$_UnAuthorized;
}
