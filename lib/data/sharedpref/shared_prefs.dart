import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'constants/preferences.dart';

@injectable
class SharedPrefs {
  SharedPrefs(this._sharedPreference);

  final SharedPreferences _sharedPreference;

  int? get currentVPN {
    return _sharedPreference.getInt(Preferences.currentVPN);
  }

  void setCurrentVPN({required int id}) {
    _sharedPreference.setInt(Preferences.currentVPN, id);
  }

}
