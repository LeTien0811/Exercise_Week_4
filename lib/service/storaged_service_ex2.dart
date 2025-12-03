import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class StoragedServiceEx2 {
  Future<SharedPreferences> _getPrefs() async {
    return await SharedPreferences.getInstance();
  }

  Future<bool> SaveName(String name, String age, String email) async {
    try {
      final prefs = await _getPrefs();
      Map<String, dynamic> newEntry = {
        'name': name,
        'email': email,
        'age': age,
        'timestamp': DateTime.now().toIso8601String(),
      };
      final String updatedJsonString = jsonEncode(newEntry);
      return await prefs.setString('NameKey', updatedJsonString);
    } catch (e) {
      throw Exception("Error from storage: ${e}");
    }
  }

  Future<Map<String, dynamic>?> ShowName() async {
    try {
      final prefs = await _getPrefs();
      String? data = await prefs.getString('NameKey');
      if (data != null) {
        return jsonDecode(data);
      }
        return null;
    } catch (e) {
      throw Exception("Error from storage: ${e}");
    }
  }

  Future<bool> clearAllData() async {
  try {
    final prefs = await _getPrefs();
    final bool success = await prefs.clear(); 
    return success;
  } catch (e) {
    print("Lỗi khi xóa dữ liệu: $e");
    return false;
  }
}
}
