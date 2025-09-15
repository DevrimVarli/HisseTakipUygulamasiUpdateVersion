import 'package:freezed_annotation/freezed_annotation.dart';
part 'portfolio_add_params.freezed.dart';
part 'portfolio_add_params.g.dart';
@freezed
class PortfolioAddParams with _$PortfolioAddParams {
  const factory PortfolioAddParams({
    required String name,
    required double maliyet,
    required int adet,
  }) = _PortfolioAddParams;
  factory PortfolioAddParams.fromJson(Map<String, dynamic> json) => _$PortfolioAddParamsFromJson(json);
}
