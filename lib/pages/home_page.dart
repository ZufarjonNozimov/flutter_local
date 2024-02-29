import 'package:flutter/material.dart';
import 'package:flutter_local/core/local/words.dart';
import 'package:flutter_local/setting/loacal_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Words.welcome.tr(context)),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  localController.changeLanguage(Language.ru);
                },
                child: Text("change")),
          ],
        ),
      ),
    );
  }
}
