// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio_add_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PortfolioAddParamsImpl _$$PortfolioAddParamsImplFromJson(
  Map<String, dynamic> json,
) => _$PortfolioAddParamsImpl(
  name: json['name'] as String,
  maliyet: (json['maliyet'] as num).toInt(),
  adet: (json['adet'] as num).toInt(),
);

Map<String, dynamic> _$$PortfolioAddParamsImplToJson(
  _$PortfolioAddParamsImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'maliyet': instance.maliyet,
  'adet': instance.adet,
};
