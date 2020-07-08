import 'package:shared_preferences/shared_preferences.dart';

Future<String> getSpString(String key) async {
  SharedPreferences sp = await SharedPreferences.getInstance();
  return sp.getString(key);
} 

Future<bool> setSpString(String key, String value) async {
  SharedPreferences sp = await SharedPreferences.getInstance();
  return sp.setString(key, value);
} 

Future<int> getSpInt(String key) async {
  SharedPreferences sp = await SharedPreferences.getInstance();
  return sp.getInt(key);
} 

Future<bool> setSpInt(String key, int value) async {
  SharedPreferences sp = await SharedPreferences.getInstance();
  return sp.setInt(key, value);
} 

Future<bool> getSpBool(String key) async {
  SharedPreferences sp = await SharedPreferences.getInstance();
  return sp.getBool(key);
} 

Future<bool> setSpBool(String key, bool value) async {
  SharedPreferences sp = await SharedPreferences.getInstance();
  return sp.setBool(key, value);
} 