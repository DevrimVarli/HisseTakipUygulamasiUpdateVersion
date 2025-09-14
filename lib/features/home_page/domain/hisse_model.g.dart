// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hisse_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HisseModelImpl _$$HisseModelImplFromJson(Map<String, dynamic> json) =>
    _$HisseModelImpl(
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      currency: json['currency'] as String,
      rate: (json['rate'] as num).toDouble(),
      hacimlot: json['hacimlot'] as String,
      hacimtl: json['hacimtl'] as String,
      time: json['time'] as String,
    );

Map<String, dynamic> _$$HisseModelImplToJson(_$HisseModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'currency': instance.currency,
      'rate': instance.rate,
      'hacimlot': instance.hacimlot,
      'hacimtl': instance.hacimtl,
      'time': instance.time,
    };
