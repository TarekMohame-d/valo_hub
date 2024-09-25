import 'package:hive_flutter/adapters.dart';
import 'package:valo_hub/features/agents/data/models/agents_model.dart';
import 'package:valo_hub/features/agents/domain/entities/agent_voice_entity.dart';
import 'package:valo_hub/features/agents/domain/entities/agents_entity.dart';

class HiveHelper {
  /// Initialize Hive with adapters
  static Future<void> initHive() async {
    await Hive.initFlutter();
    Hive.registerAdapter(AgentsEntityAdapter());
    Hive.registerAdapter(RoleAdapter());
    Hive.registerAdapter(AbilitiesAdapter());
    Hive.registerAdapter(AgentVoiceEntityAdapter());
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
}

class HiveBoxes {
  static const String agentsBox = 'agentsBox';
  static const String agentsVoiceLinesBox = 'agentsVoiceLinesBox';
}

class HiveKeys {}
