import 'package:appointment/core/routing/routes.dart';
import 'package:appointment/features/auth/presentation/screens/login_screen.dart';
import 'package:appointment/features/auth/presentation/screens/register_screen.dart';
import 'package:appointment/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter {
Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
          settings: settings,
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
          settings: settings,
        );
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => const RegisterScreen(),
          settings: settings,
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const Placeholder(),
          settings: settings,
        );
      default:
        return CupertinoPageRoute(
          builder: (_) => const Placeholder(),
          settings: settings,
        );
    }
  }
}