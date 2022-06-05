import 'package:shared_preferences/shared_preferences.dart';

class AppStorage {
  AppStorage() {
    initPrefs();
  }

  late SharedPreferences prefs;

  initPrefs() async {
    prefs = await SharedPreferences.getInstance();
  }
}
