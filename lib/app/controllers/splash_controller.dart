import 'package:flutter_modular/flutter_modular.dart';

class SplashController {
  init(
    String route,
    Duration? time,
    Function? action,
  ) async {
    await Future.delayed(time ?? const Duration(seconds: 2));

    if (action != null) {
      await action();
    }

    Modular.to.navigate(route);
  }
}
