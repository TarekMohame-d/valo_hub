import 'package:intl/intl.dart';
import 'package:valo_hub/core/helpers/shared_pref_helper.dart';

class DataExpiryHandler {
  static const int expiryDays = 7;

  static Future<bool> isDataExpired(String lastUpdatedKey) async {
    String lastUpdatedString = await SharedPrefHelper.getString(lastUpdatedKey);
    DateTime lastUpdated = DateTime.tryParse(lastUpdatedString) ??
        DateTime.now().subtract(const Duration(days: expiryDays + 1));
    return DateTime.now().difference(lastUpdated).inDays > expiryDays;
  }

  static Future<void> updateLastUpdatedDate(String key) async {
    await SharedPrefHelper.setData(
        key, DateFormat('yyyy-MM-dd').format(DateTime.now()));
  }
}
