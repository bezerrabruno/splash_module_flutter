import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:splash_module_flutter/app/controllers/splash_controller.dart';

class SplashPage extends StatefulWidget {
  final SplashController controller;

  final Function action;
  final String logo;
  final String route;
  final Duration time;

  const SplashPage(
    this.controller, {
    super.key,
    required this.action,
    required this.logo,
    required this.route,
    required this.time,
  });

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    widget.controller.init(
      widget.action,
      widget.route,
      widget.time,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          widget.logo,
          height: size.height / 3,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}