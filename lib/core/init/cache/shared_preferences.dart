import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_theme/core/constants/enums/keys.dart';

class LocaleManager {
  static LocaleManager _instance = LocaleManager._init();


  SharedPreferences _preferences;
  static LocaleManager get instance => _instance;

  LocaleManager._init() {
    SharedPreferences.getInstance().then((value) {
      _preferences = value;
    });
  }
  static prefrencesInit() async {
    if (instance._preferences == null) {
      instance._preferences = await SharedPreferences.getInstance();
    }
    return;
  }

   void setBoolValue(PreferencesKeys key, bool value) async {
    await _preferences.setBool(key.toString(), value);
  }

  bool getBoolValue(PreferencesKeys key){  
    return _preferences.getBool(key.toString()) ;}
      
  

  
}