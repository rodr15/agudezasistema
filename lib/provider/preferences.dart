import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ConfigProvider with ChangeNotifier {
  int pantalla = 0;
  int recuadro = 0;
  SharedPreferences? _preferences;

  ConfigProvider() {
    _loadSettingsFromPrefs();
  }
  _initializePrefs() async {
    if (_preferences == null) {
      _preferences = await SharedPreferences.getInstance();
    }
  }

  _loadSettingsFromPrefs() async {
    await _initializePrefs();
    pantalla = _preferences?.getInt('pantalla') ?? 0;
    recuadro = _preferences?.getInt('recuadro') ?? 0;
    notifyListeners();
  }

  _saveSettingsToPrefs() async {
    await _initializePrefs();
    _preferences?.setInt('pantalla', pantalla);
    _preferences?.setInt('recuadro', recuadro);
  }

  void savingConfigurations() {
    print('saving');
    print(recuadro);
    print(pantalla);
    _saveSettingsToPrefs();
    notifyListeners();
  }

  set setPantalla(int n_pantalla) {
    this.pantalla = n_pantalla;
    notifyListeners();
  }

  get getPantalla {
    return pantalla;
  }

  set setRecuadro(int n_recuadro) {
    this.recuadro = n_recuadro;

    notifyListeners();
  }

  get getRecuadro {
    return recuadro;
  }
}
