import 'package:flutter/material.dart';

enum Language { en, uz, ru }

final localController = LocalController();

class LocalController with ChangeNotifier {
  String _appLocal = "uz";
  Locale get appLocale => _appLocal == Language.ru.name
      ? const Locale("ru", "RU")
      : _appLocal == Language.en.name
          ? const Locale("en", "US")
          : const Locale("uz", "UZ");

  void changeLanguage(Language language) {
    _appLocal = language.name;
    notifyListeners();
    debugPrint("$_appLocal");
  }
}
