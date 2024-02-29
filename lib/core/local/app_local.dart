import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations {
  final Locale locale;
  AppLocalizations(this.locale);
  late Map<String, String> _localizationsValue;
  static AppLocalizations of(BuildContext context) =>
      Localizations.of(context, AppLocalizations)!;
  Future<AppLocalizations> load() async {
    final String stringValue =
        await rootBundle.loadString("asset/lang/${locale.languageCode}.json");
    Map<String, dynamic> mappadJson =
        jsonDecode(stringValue) as Map<String, dynamic>;
    _localizationsValue = mappadJson.map(
      (key, value) => MapEntry(
        key,
        value.toString(),
      ),
    );
    return this;
  }

  String tr(String key) => _localizationsValue[key]!;
  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();
  @override
  bool isSupported(Locale locale) =>
      ["uz", "ru", "en"].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async =>
      SynchronousFuture(await AppLocalizations(locale).load());

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) =>
      false;
}
