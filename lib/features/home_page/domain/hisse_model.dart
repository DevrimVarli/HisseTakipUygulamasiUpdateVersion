
import 'package:freezed_annotation/freezed_annotation.dart';
part 'hisse_model.freezed.dart';
part 'hisse_model.g.dart';
@freezed 
class HisseModel with _$HisseModel { 
  const factory HisseModel({
    required String name,
    required double price,
    required String currency,
    required double rate,
    required String hacimlot,
    required String hacimtl,
    required String time,
  }) = _HisseModel;

  factory HisseModel.fromJson(Map<String, dynamic> json) => _$HisseModelFromJson(json);

}
