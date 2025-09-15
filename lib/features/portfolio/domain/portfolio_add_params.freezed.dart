// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio_add_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PortfolioAddParams _$PortfolioAddParamsFromJson(Map<String, dynamic> json) {
  return _PortfolioAddParams.fromJson(json);
}

/// @nodoc
mixin _$PortfolioAddParams {
  String get name => throw _privateConstructorUsedError;
  double get maliyet => throw _privateConstructorUsedError;
  int get adet => throw _privateConstructorUsedError;

  /// Serializes this PortfolioAddParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PortfolioAddParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PortfolioAddParamsCopyWith<PortfolioAddParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioAddParamsCopyWith<$Res> {
  factory $PortfolioAddParamsCopyWith(
    PortfolioAddParams value,
    $Res Function(PortfolioAddParams) then,
  ) = _$PortfolioAddParamsCopyWithImpl<$Res, PortfolioAddParams>;
  @useResult
  $Res call({String name, double maliyet, int adet});
}

/// @nodoc
class _$PortfolioAddParamsCopyWithImpl<$Res, $Val extends PortfolioAddParams>
    implements $PortfolioAddParamsCopyWith<$Res> {
  _$PortfolioAddParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PortfolioAddParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? maliyet = null,
    Object? adet = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            maliyet: null == maliyet
                ? _value.maliyet
                : maliyet // ignore: cast_nullable_to_non_nullable
                      as double,
            adet: null == adet
                ? _value.adet
                : adet // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PortfolioAddParamsImplCopyWith<$Res>
    implements $PortfolioAddParamsCopyWith<$Res> {
  factory _$$PortfolioAddParamsImplCopyWith(
    _$PortfolioAddParamsImpl value,
    $Res Function(_$PortfolioAddParamsImpl) then,
  ) = __$$PortfolioAddParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, double maliyet, int adet});
}

/// @nodoc
class __$$PortfolioAddParamsImplCopyWithImpl<$Res>
    extends _$PortfolioAddParamsCopyWithImpl<$Res, _$PortfolioAddParamsImpl>
    implements _$$PortfolioAddParamsImplCopyWith<$Res> {
  __$$PortfolioAddParamsImplCopyWithImpl(
    _$PortfolioAddParamsImpl _value,
    $Res Function(_$PortfolioAddParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PortfolioAddParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? maliyet = null,
    Object? adet = null,
  }) {
    return _then(
      _$PortfolioAddParamsImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        maliyet: null == maliyet
            ? _value.maliyet
            : maliyet // ignore: cast_nullable_to_non_nullable
                  as double,
        adet: null == adet
            ? _value.adet
            : adet // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PortfolioAddParamsImpl implements _PortfolioAddParams {
  const _$PortfolioAddParamsImpl({
    required this.name,
    required this.maliyet,
    required this.adet,
  });

  factory _$PortfolioAddParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PortfolioAddParamsImplFromJson(json);

  @override
  final String name;
  @override
  final double maliyet;
  @override
  final int adet;

  @override
  String toString() {
    return 'PortfolioAddParams(name: $name, maliyet: $maliyet, adet: $adet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PortfolioAddParamsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.maliyet, maliyet) || other.maliyet == maliyet) &&
            (identical(other.adet, adet) || other.adet == adet));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, maliyet, adet);

  /// Create a copy of PortfolioAddParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PortfolioAddParamsImplCopyWith<_$PortfolioAddParamsImpl> get copyWith =>
      __$$PortfolioAddParamsImplCopyWithImpl<_$PortfolioAddParamsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PortfolioAddParamsImplToJson(this);
  }
}

abstract class _PortfolioAddParams implements PortfolioAddParams {
  const factory _PortfolioAddParams({
    required final String name,
    required final double maliyet,
    required final int adet,
  }) = _$PortfolioAddParamsImpl;

  factory _PortfolioAddParams.fromJson(Map<String, dynamic> json) =
      _$PortfolioAddParamsImpl.fromJson;

  @override
  String get name;
  @override
  double get maliyet;
  @override
  int get adet;

  /// Create a copy of PortfolioAddParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PortfolioAddParamsImplCopyWith<_$PortfolioAddParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
