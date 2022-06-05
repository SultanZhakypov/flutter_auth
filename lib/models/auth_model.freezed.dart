// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthModel {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get object => throw _privateConstructorUsedError;
  String get externalId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthModelCopyWith<AuthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthModelCopyWith<$Res> {
  factory $AuthModelCopyWith(AuthModel value, $Res Function(AuthModel) then) =
      _$AuthModelCopyWithImpl<$Res>;
  $Res call({int status, String message, String object, String externalId});
}

/// @nodoc
class _$AuthModelCopyWithImpl<$Res> implements $AuthModelCopyWith<$Res> {
  _$AuthModelCopyWithImpl(this._value, this._then);

  final AuthModel _value;
  // ignore: unused_field
  final $Res Function(AuthModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? object = freezed,
    Object? externalId = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      object: object == freezed
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      externalId: externalId == freezed
          ? _value.externalId
          : externalId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthModelCopyWith<$Res> implements $AuthModelCopyWith<$Res> {
  factory _$$_AuthModelCopyWith(
          _$_AuthModel value, $Res Function(_$_AuthModel) then) =
      __$$_AuthModelCopyWithImpl<$Res>;
  @override
  $Res call({int status, String message, String object, String externalId});
}

/// @nodoc
class __$$_AuthModelCopyWithImpl<$Res> extends _$AuthModelCopyWithImpl<$Res>
    implements _$$_AuthModelCopyWith<$Res> {
  __$$_AuthModelCopyWithImpl(
      _$_AuthModel _value, $Res Function(_$_AuthModel) _then)
      : super(_value, (v) => _then(v as _$_AuthModel));

  @override
  _$_AuthModel get _value => super._value as _$_AuthModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? object = freezed,
    Object? externalId = freezed,
  }) {
    return _then(_$_AuthModel(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      object: object == freezed
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      externalId: externalId == freezed
          ? _value.externalId
          : externalId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthModel implements _AuthModel {
  const _$_AuthModel(
      {this.status = 0,
      this.message = '',
      this.object = '',
      this.externalId = ''});

  @override
  @JsonKey()
  final int status;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String object;
  @override
  @JsonKey()
  final String externalId;

  @override
  String toString() {
    return 'AuthModel(status: $status, message: $message, object: $object, externalId: $externalId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthModel &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.object, object) &&
            const DeepCollectionEquality()
                .equals(other.externalId, externalId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(object),
      const DeepCollectionEquality().hash(externalId));

  @JsonKey(ignore: true)
  @override
  _$$_AuthModelCopyWith<_$_AuthModel> get copyWith =>
      __$$_AuthModelCopyWithImpl<_$_AuthModel>(this, _$identity);
}

abstract class _AuthModel implements AuthModel {
  const factory _AuthModel(
      {final int status,
      final String message,
      final String object,
      final String externalId}) = _$_AuthModel;

  @override
  int get status => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  String get object => throw _privateConstructorUsedError;
  @override
  String get externalId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AuthModelCopyWith<_$_AuthModel> get copyWith =>
      throw _privateConstructorUsedError;
}
