// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_adapters.dart';

// **************************************************************************
// AdaptersGenerator
// **************************************************************************

class HisseModelAdapter extends TypeAdapter<HisseModel> {
  @override
  final typeId = 1;

  @override
  HisseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HisseModel(
      name: fields[0] as String,
      price: (fields[1] as num).toDouble(),
      currency: fields[2] as String,
      rate: (fields[3] as num).toDouble(),
      hacimlot: fields[4] as String,
      hacimtl: fields[5] as String,
      time: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, HisseModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.price)
      ..writeByte(2)
      ..write(obj.currency)
      ..writeByte(3)
      ..write(obj.rate)
      ..writeByte(4)
      ..write(obj.hacimlot)
      ..writeByte(5)
      ..write(obj.hacimtl)
      ..writeByte(6)
      ..write(obj.time);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HisseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
