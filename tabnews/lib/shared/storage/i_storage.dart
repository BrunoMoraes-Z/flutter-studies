abstract class IStorage {
  Future<void> init();

  Future<String> getString(String key, {dynamic defaultValue});
  Future<bool> getBool(String key, {dynamic defaultValue});
  Future<int> getInt(String key, {dynamic defaultValue});
  Future<Map<String, dynamic>> getJson(String key, {dynamic defaultValue});

  Future<void> setString(String key, String value);
  Future<void> setBool(String key, bool value);
  Future<void> setInt(String key, int value);
  Future<void> setJson(String key, Map<String, dynamic> value);
}
