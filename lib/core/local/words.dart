import 'package:flutter/material.dart';
import 'package:flutter_local/core/local/app_local.dart';

extension MyWords on Words {
  String tr(BuildContext context) => AppLocalizations.of(context).tr(name);
}

enum Words {
  welcome,
  hello,
}
