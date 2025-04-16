import 'package:appointment/features/onboarding/presentation/screens/widgets/onboarding_body.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: OnboardingBody()
      ),
    );
  }
}
