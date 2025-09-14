// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hisse_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HisseModel _$HisseModelFromJson(Map<String, dynamic> json) {
  return _HisseModel.fromJson(json);
}

/// @nodoc
mixin _$HisseModel {
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  double get rate => throw _privateConstructorUsedError;
  String get hacimlot => throw _privateConstructorUsedError;
  String get hacimtl => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;

  /// Serializes this HisseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HisseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HisseModelCopyWith<HisseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HisseModelCopyWith<$Res> {
  factory $HisseModelCopyWith(
    HisseModel value,
    $Res Function(HisseModel) then,
  ) = _$HisseModelCopyWithImpl<$Res, HisseModel>;
  @useResult
  $Res call({
    String name,
    double price,
    String currency,
    double rate,
    String hacimlot,
    String hacimtl,
    String time,
  });
}

/// @nodoc
class _$HisseModelCopyWithImpl<$Res, $Val extends HisseModel>
    implements $HisseModelCopyWith<$Res> {
  _$HisseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HisseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? currency = null,
    Object? rate = null,
    Object? hacimlot = null,
    Object? hacimtl = null,
    Object? time = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as double,
            currency: null == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                      as String,
            rate: null == rate
                ? _value.rate
                : rate // ignore: cast_nullable_to_non_nullable
                      as double,
            hacimlot: null == hacimlot
                ? _value.hacimlot
                : hacimlot // ignore: cast_nullable_to_non_nullable
                      as String,
            hacimtl: null == hacimtl
                ? _value.hacimtl
                : hacimtl // ignore: cast_nullable_to_non_nullable
                      as String,
            time: null == time
                ? _value.time
                : time // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HisseModelImplCopyWith<$Res>
    implements $HisseModelCopyWith<$Res> {
  factory _$$HisseModelImplCopyWith(
    _$HisseModelImpl value,
    $Res Function(_$HisseModelImpl) then,
  ) = __$$HisseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    double price,
    String currency,
    double rate,
    String hacimlot,
    String hacimtl,
    String time,
  });
}

/// @nodoc
class __$$HisseModelImplCopyWithImpl<$Res>
    extends _$HisseModelCopyWithImpl<$Res, _$HisseModelImpl>
    implements _$$HisseModelImplCopyWith<$Res> {
  __$$HisseModelImplCopyWithImpl(
    _$HisseModelImpl _value,
    $Res Function(_$HisseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HisseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? currency = null,
    Object? rate = null,
    Object? hacimlot = null,
    Object? hacimtl = null,
    Object? time = null,
  }) {
    return _then(
      _$HisseModelImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as double,
        currency: null == currency
            ? _value.currency
            : currency // ignore: cast_nullable_to_non_nullable
                  as String,
        rate: null == rate
            ? _value.rate
            : rate // ignore: cast_nullable_to_non_nullable
                  as double,
        hacimlot: null == hacimlot
            ? _value.hacimlot
            : hacimlot // ignore: cast_nullable_to_non_nullable
                  as String,
        hacimtl: null == hacimtl
            ? _value.hacimtl
            : hacimtl // ignore: cast_nullable_to_non_nullable
                  as String,
        time: null == time
            ? _value.time
            : time // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HisseModelImpl implements _HisseModel {
  const _$HisseModelImpl({
    required this.name,
    required this.price,
    required this.currency,
    required this.rate,
    required this.hacimlot,
    required this.hacimtl,
    required this.time,
  });

  factory _$HisseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HisseModelImplFromJson(json);

  @override
  final String name;
  @override
  final double price;
  @override
  final String currency;
  @override
  final double rate;
  @override
  final String hacimlot;
  @override
  final String hacimtl;
  @override
  final String time;

  @override
  String toString() {
    return 'HisseModel(name: $name, price: $price, currency: $currency, rate: $rate, hacimlot: $hacimlot, hacimtl: $hacimtl, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HisseModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.hacimlot, hacimlot) ||
                other.hacimlot == hacimlot) &&
            (identical(other.hacimtl, hacimtl) || other.hacimtl == hacimtl) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    price,
    currency,
    rate,
    hacimlot,
    hacimtl,
    time,
  );

  /// Create a copy of HisseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HisseModelImplCopyWith<_$HisseModelImpl> get copyWith =>
      __$$HisseModelImplCopyWithImpl<_$HisseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HisseModelImplToJson(this);
  }
}

abstract class _HisseModel implements HisseModel {
  const factory _HisseModel({
    required final String name,
    required final double price,
    required final String currency,
    required final double rate,
    required final String hacimlot,
    required final String hacimtl,
    required final String time,
  }) = _$HisseModelImpl;

  factory _HisseModel.fromJson(Map<String, dynamic> json) =
      _$HisseModelImpl.fromJson;

  @override
  String get name;
  @override
  double get price;
  @override
  String get currency;
  @override
  double get rate;
  @override
  String get hacimlot;
  @override
  String get hacimtl;
  @override
  String get time;

  /// Create a copy of HisseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HisseModelImplCopyWith<_$HisseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
