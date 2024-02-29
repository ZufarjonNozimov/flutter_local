import 'package:flutter/material.dart';
import 'package:flutter_local/core/local/app_local.dart';
import 'package:flutter_local/pages/home_page.dart';
import 'package:flutter_local/setting/inherented_local_notifire.dart';
import 'package:flutter_local/setting/loacal_controller.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return InherentedLocaleNotifire(
      localController: localController,
      widget: Builder(
        builder: (context) => MaterialApp(
          locale: InherentedLocaleNotifire.maybeOf(context)?.appLocale ??
              const Locale("uz", "UZ"),
          supportedLocales: const [
            Locale("uz", "UZ"),
            Locale("ru", "RU"),
            Locale("en", "EN"),
          ],
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const HomePage(),
        ),
      ),
    );
  }
}
