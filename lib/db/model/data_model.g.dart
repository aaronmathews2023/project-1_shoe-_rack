// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProducthiveAdapter extends TypeAdapter<Producthive> {
  @override
  final int typeId = 0;

  @override
  Producthive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Producthive(
      id: fields[0] as String,
      brand: fields[1] as String,
      name: fields[2] as String,
      image: fields[3] as String,
      price: fields[4] as double,
      colors: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Producthive obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.brand)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.image)
      ..writeByte(4)
      ..write(obj.price)
      ..writeByte(5)
      ..write(obj.colors);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProducthiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
