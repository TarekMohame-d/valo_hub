// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maps_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CallOutsAdapter extends TypeAdapter<CallOuts> {
  @override
  final int typeId = 16;

  @override
  CallOuts read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CallOuts(
      regionName: fields[0] as String?,
      superRegionName: fields[1] as String?,
      location: fields[2] as Location?,
    );
  }

  @override
  void write(BinaryWriter writer, CallOuts obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.regionName)
      ..writeByte(1)
      ..write(obj.superRegionName)
      ..writeByte(2)
      ..write(obj.location);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CallOutsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class LocationAdapter extends TypeAdapter<Location> {
  @override
  final int typeId = 17;

  @override
  Location read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Location(
      x: fields[0] as double?,
      y: fields[1] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, Location obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.x)
      ..writeByte(1)
      ..write(obj.y);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MapsModel _$MapsModelFromJson(Map<String, dynamic> json) => MapsModel(
      status: (json['status'] as num?)?.toInt(),
      mapsData: (json['data'] as List<dynamic>?)
          ?.map((e) => MapData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

MapData _$MapDataFromJson(Map<String, dynamic> json) => MapData(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      narrativeDescription: json['narrativeDescription'] as String?,
      tacticalDescription: json['tacticalDescription'] as String?,
      coordinates: json['coordinates'] as String?,
      displayIcon: json['displayIcon'] as String?,
      listViewIcon: json['listViewIcon'] as String?,
      listViewIconTall: json['listViewIconTall'] as String?,
      splash: json['splash'] as String?,
      stylizedBackgroundImage: json['stylizedBackgroundImage'] as String?,
      premierBackgroundImage: json['premierBackgroundImage'] as String?,
      assetPath: json['assetPath'] as String?,
      mapUrl: json['mapUrl'] as String?,
      xMultiplier: (json['xMultiplier'] as num?)?.toDouble(),
      yMultiplier: (json['yMultiplier'] as num?)?.toDouble(),
      xScalarToAdd: (json['xScalarToAdd'] as num?)?.toDouble(),
      yScalarToAdd: (json['yScalarToAdd'] as num?)?.toDouble(),
      callOuts: (json['callouts'] as List<dynamic>?)
          ?.map((e) => CallOuts.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

CallOuts _$CallOutsFromJson(Map<String, dynamic> json) => CallOuts(
      regionName: json['regionName'] as String?,
      superRegionName: json['superRegionName'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      x: (json['x'] as num?)?.toDouble(),
      y: (json['y'] as num?)?.toDouble(),
    );
