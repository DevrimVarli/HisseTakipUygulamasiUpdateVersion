// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SignUpParams _$SignUpParamsFromJson(Map<String, dynamic> json) {
  return _SignUpParams.fromJson(json);
}

/// @nodoc
mixin _$SignUpParams {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;

  /// Serializes this SignUpParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignUpParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpParamsCopyWith<SignUpParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpParamsCopyWith<$Res> {
  factory $SignUpParamsCopyWith(
    SignUpParams value,
    $Res Function(SignUpParams) then,
  ) = _$SignUpParamsCopyWithImpl<$Res, SignUpParams>;
  @useResult
  $Res call({
    String email,
    String password,
    String firstName,
    String lastName,
    String phoneNumber,
  });
}

/// @nodoc
class _$SignUpParamsCopyWithImpl<$Res, $Val extends SignUpParams>
    implements $SignUpParamsCopyWith<$Res> {
  _$SignUpParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
  }) {
    return _then(
      _value.copyWith(
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            password: null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                      as String,
            firstName: null == firstName
                ? _value.firstName
                : firstName // ignore: cast_nullable_to_non_nullable
                      as String,
            lastName: null == lastName
                ? _value.lastName
                : lastName // ignore: cast_nullable_to_non_nullable
                      as String,
            phoneNumber: null == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SignUpParamsImplCopyWith<$Res>
    implements $SignUpParamsCopyWith<$Res> {
  factory _$$SignUpParamsImplCopyWith(
    _$SignUpParamsImpl value,
    $Res Function(_$SignUpParamsImpl) then,
  ) = __$$SignUpParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String email,
    String password,
    String firstName,
    String lastName,
    String phoneNumber,
  });
}

/// @nodoc
class __$$SignUpParamsImplCopyWithImpl<$Res>
    extends _$SignUpParamsCopyWithImpl<$Res, _$SignUpParamsImpl>
    implements _$$SignUpParamsImplCopyWith<$Res> {
  __$$SignUpParamsImplCopyWithImpl(
    _$SignUpParamsImpl _value,
    $Res Function(_$SignUpParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignUpParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
  }) {
    return _then(
      _$SignUpParamsImpl(
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
        firstName: null == firstName
            ? _value.firstName
            : firstName // ignore: cast_nullable_to_non_nullable
                  as String,
        lastName: null == lastName
            ? _value.lastName
            : lastName // ignore: cast_nullable_to_non_nullable
                  as String,
        phoneNumber: null == phoneNumber
            ? _value.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpParamsImpl implements _SignUpParams {
  const _$SignUpParamsImpl({
    required this.email,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
  });

  factory _$SignUpParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpParamsImplFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'SignUpParams(email: $email, password: $password, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpParamsImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    email,
    password,
    firstName,
    lastName,
    phoneNumber,
  );

  /// Create a copy of SignUpParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpParamsImplCopyWith<_$SignUpParamsImpl> get copyWith =>
      __$$SignUpParamsImplCopyWithImpl<_$SignUpParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpParamsImplToJson(this);
  }
}

abstract class _SignUpParams implements SignUpParams {
  const factory _SignUpParams({
    required final String email,
    required final String password,
    required final String firstName,
    required final String lastName,
    required final String phoneNumber,
  }) = _$SignUpParamsImpl;

  factory _SignUpParams.fromJson(Map<String, dynamic> json) =
      _$SignUpParamsImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get phoneNumber;

  /// Create a copy of SignUpParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpParamsImplCopyWith<_$SignUpParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
