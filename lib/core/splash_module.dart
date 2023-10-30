import 'package:flutter_modular/flutter_modular.dart';
import 'package:splash_module_flutter/app/controllers/splash_controller.dart';
import 'package:splash_module_flutter/app/pages/splash_page.dart';

class SplashModule extends Module {
  final Function? action;
  final String logo;
  final String route;
  final Duration? time;

  SplashModule({
    this.action,
    required this.logo,
    required this.route,
    this.time,
  });

  @override
  void binds(Injector i) {
    i.addLazySingleton(SplashController.new);

    super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (_) => SplashPage(
        Modular.get<SplashController>(),
        action: action,
        logo: logo,
        route: route,
        time: time,
      ),
    );

    super.routes(r);
  }
}
