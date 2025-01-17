import 'package:hive_flutter/adapters.dart';
import 'package:valo_hub/features/agents/data/models/agents_model.dart';
import 'package:valo_hub/features/agents/domain/entities/agent_voice_entity.dart';
import 'package:valo_hub/features/agents/domain/entities/agents_entity.dart';
import 'package:valo_hub/features/maps/data/models/maps_model.dart';
import 'package:valo_hub/features/maps/domain/entities/map_entity.dart';
import 'package:valo_hub/features/player_cards/data/models/player_cards_model.dart';
import 'package:valo_hub/features/player_cards/domain/entities/player_cards_entity.dart';
import 'package:valo_hub/features/sprays/data/models/spray_model.dart';
import 'package:valo_hub/features/sprays/domain/entities/spray_entity.dart';
import 'package:valo_hub/features/weapons/data/models/weapon_model.dart';
import 'package:valo_hub/features/weapons/domain/entities/weapon_entity.dart';

class HiveHelper {
  /// Initialize Hive with adapters
  static Future<void> initHive() async {
    // 22 adapters
    await Hive.initFlutter();
    Hive.registerAdapter(AgentsEntityAdapter());
    Hive.registerAdapter(RoleAdapter());
    Hive.registerAdapter(AbilitiesAdapter());
    Hive.registerAdapter(AgentVoiceEntityAdapter());
    Hive.registerAdapter(WeaponStatsAdapter());
    Hive.registerAdapter(AdsStatsAdapter());
    Hive.registerAdapter(AltShotgunStatsAdapter());
    Hive.registerAdapter(AirBurstStatsAdapter());
    Hive.registerAdapter(DamageRangesAdapter());
    Hive.registerAdapter(ShopDataAdapter());
    Hive.registerAdapter(GridPositionAdapter());
    Hive.registerAdapter(SkinsAdapter());
    Hive.registerAdapter(ChromasAdapter());
    Hive.registerAdapter(LevelsAdapter());
    Hive.registerAdapter(WeaponEntityAdapter());
    Hive.registerAdapter(CallOutsAdapter());
    Hive.registerAdapter(LocationAdapter());
    Hive.registerAdapter(MapEntityAdapter());
    Hive.registerAdapter(PlayerCardsEntityAdapter());
    Hive.registerAdapter(PlayerCardsModelAdapter());
    Hive.registerAdapter(CardDataAdapter());
    Hive.registerAdapter(SprayEntityAdapter());
    Hive.registerAdapter(SprayDataAdapter());
  }

  /// Save data to the box
  static Future<void> saveData<T>({
    required String boxName,
    required String key,
    required T data,
  }) async {
    Box box = !checkBoxOpened(boxName)
        ? await Hive.openBox<T>(boxName)
        : Hive.box<T>(boxName);
    await box.put(key, data);
  }

  static checkBoxOpened(String boxName) {
    return Hive.isBoxOpen(boxName);
  }

  /// Retrieve data from the box
  static Future<T?> getData<T>({
    required String boxName,
    required String key,
  }) async {
    Box box = !checkBoxOpened(boxName)
        ? await Hive.openBox<T>(boxName)
        : Hive.box<T>(boxName);
    return box.get(key);
  }

  /// Update data in the box
  Future<void> updateData<T>({
    required String boxName,
    required String key,
    required T data,
  }) async {
    await saveData(boxName: boxName, key: key, data: data);
  }

  /// Check if data exists in the box
  static Future<bool> hasData<T>({
    required String boxName,
  }) async {
    Box box = !checkBoxOpened(boxName)
        ? await Hive.openBox<T>(boxName)
        : Hive.box<T>(boxName);
    return box.isNotEmpty;
  }

  /// Check if a specific key exists in the box
  static Future<bool> hasKey<T>({
    required String boxName,
    required String key,
  }) async {
    Box box = !checkBoxOpened(boxName)
        ? await Hive.openBox<T>(boxName)
        : Hive.box<T>(boxName);
    return box.containsKey(key);
  }

  /// Retrieve all data from the box
  static Future<List<T>> getAllData<T>({
    required String boxName,
  }) async {
    Box box = !checkBoxOpened(boxName)
        ? await Hive.openBox<T>(boxName)
        : Hive.box<T>(boxName);
    return box.values.cast<T>().toList();
  }

  /// Retrieve all keys from the box
  static Future<List<String>> getAllKeys({
    required String boxName,
  }) async {
    Box box = !checkBoxOpened(boxName)
        ? await Hive.openBox(boxName)
        : Hive.box(boxName);
    return box.keys.cast<String>().toList();
  }

  /// Delete a specific entry in the box
  static Future<void> deleteData<T>({
    required String boxName,
    required String key,
  }) async {
    Box box = !checkBoxOpened(boxName)
        ? await Hive.openBox<T>(boxName)
        : Hive.box<T>(boxName);
    await box.delete(key);
  }

  /// Delete all data in the box
  static Future<void> deleteAllData<T>({
    required String boxName,
  }) async {
    Box box = !checkBoxOpened(boxName)
        ? await Hive.openBox<T>(boxName)
        : Hive.box<T>(boxName);
    await box.clear();
  }

  /// Close a specific box
  static Future<void> closeBox<T>(String boxName) async {
    Box box = !checkBoxOpened(boxName)
        ? await Hive.openBox<T>(boxName)
        : Hive.box<T>(boxName);
    await box.close();
  }

  /// Close all opened boxes
  static Future<void> closeAllBoxes() async {
    await Hive.close();
  }

  static Future<void> deleteBoxFromDisk(
    String boxName,
  ) async {
    await Hive.deleteBoxFromDisk(boxName);
  }
}

class HiveBoxes {
  static const String agentsBox = 'agentsBox';
  static const String agentsVoiceLinesBox = 'agentsVoiceLinesBox';
  static const String weaponsBox = 'weaponsBox';
  static const String mapsBox = 'mapsBox';
  static const String playerCardsBox = 'playerCardsBox';
  static const String spraysBox = 'spraysBox';
}

class HiveKeys {}
