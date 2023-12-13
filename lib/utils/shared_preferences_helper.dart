import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  //getter and setter method string shared preferences

  //Checking key exists in the storage
  static Future<bool> containKey(key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(key);
  }

  //Get string prefs
  static Future<String> getStringPreference(String? key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key!) ?? '';
  }

  //Set string prefs
  static Future<bool> setStringPreference(String key, String? value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(key, value!);
  }

  //Get int prefs
  static Future<int> getIntPreference(String? key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key!) ?? 0;
  }

  //Set int prefs
  static Future<bool> setIntPreference(String key, int? value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setInt(key, value!);
  }

  //Set double prefs
  static Future<bool> setDoublePreference(String key, double? value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setDouble(key, value!);
  }

  //get double prefs
  static Future<double?> getDoublePreference(String? key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(key!) ?? 0;
  }

  //Set bool prefs
  static Future<bool> setBooleanPreference(String key, bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setBool(key, value);
  }

  //Get bool prefs
  static Future<bool?> getBoolPreference(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key);
  }

  //Get list prefs
  static Future<List<String>?> getListPreference(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(key) ?? [];
  }

  //Set list prefs
  static Future<bool> setListPreference(String key, List<String> value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setStringList(key, value);
  }

  //Checking key exists in the storage
  static Future<bool> removeKey(key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove(key);
  }
}
