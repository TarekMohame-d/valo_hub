// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WeaponEntityAdapter extends TypeAdapter<WeaponEntity> {
  @override
  final int typeId = 4;

  @override
  WeaponEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WeaponEntity(
      uuid: fields[0] as String?,
      displayName: fields[1] as String?,
      category: fields[2] as String?,
      displayIcon: fields[3] as String?,
      killStreamIcon: fields[4] as String?,
      weaponStats: fields[5] as WeaponStats?,
      shopData: fields[6] as ShopData?,
      skins: (fields[7] as List?)?.cast<Skins>(),
    );
  }

  @override
  void write(BinaryWriter writer, WeaponEntity obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.displayName)
      ..writeByte(2)
      ..write(obj.category)
      ..writeByte(3)
      ..write(obj.displayIcon)
      ..writeByte(4)
      ..write(obj.killStreamIcon)
      ..writeByte(5)
      ..write(obj.weaponStats)
      ..writeByte(6)
      ..write(obj.shopData)
      ..writeByte(7)
      ..write(obj.skins);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeaponEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
