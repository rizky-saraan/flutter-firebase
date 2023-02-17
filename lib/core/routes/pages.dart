import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../pages/welcome/bindings.dart';
import '../../pages/welcome/view.dart';
import 'names.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;
  static const Application = AppRoutes.Application;
  static final RouteObserver<Route> observer = RouteObserver();
  static List<String> history = [];
  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => const WelcomePage(),
      binding: WelcomeBinding(),
    ),
  ];
}
