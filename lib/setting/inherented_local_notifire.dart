import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_local/setting/loacal_controller.dart';

class InherentedLocaleNotifire extends InheritedNotifier<LocalController> {
  const InherentedLocaleNotifire({
    required final LocalController localController,
    required final Widget widget,
    Key? key,
  }) : super(
          key: key,
          child: widget,
          notifier: localController,
        );

  static LocalController? maybeOf(BuildContext context, {bool listen = true}) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<InherentedLocaleNotifire>()
          ?.notifier;
    } else {
      final inhW = context
          .getElementForInheritedWidgetOfExactType<InherentedLocaleNotifire>()
          ?.widget;
      return inhW is InherentedLocaleNotifire ? inhW.notifier : null;
    }
  }
}
