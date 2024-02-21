import 'package:counter_app/presentation/screens/counter_screen/counter_screen.dart';
import 'package:counter_app/presentation/screens/second_screen/second_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const String counter = 'counter';
  static const String second = 'second';

  const AppRouter._();

  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case counter:
        return MaterialPageRoute(
          builder: (_) => const CounterScreen(),
        );
      case second:
        return MaterialPageRoute(
          builder: (_) => const SecondScreen(),
        );
      default:
        break;
    }
    return null;
  }
}
