import 'package:flutter_modular/flutter_modular.dart';

class SplashController {
  init(
    Function? action,
    String route,
    Duration? time,
  ) async {
    await Future.delayed(time ?? const Duration(seconds: 2));

    if (action != null) {
      await action();
    }

    Modular.to.navigate(route);
  }
}
