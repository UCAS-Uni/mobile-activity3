import 'package:activity3/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../app_navigator.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({
    super.key,
  });

  @override
  State<SplashWidget> createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      AppRouter.navigateWithReplacementToWidget(const OnboardingScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF8160EF),
                Color(0xFF5927FF),
              ],
            ),
          ),
        ),
        Center(
          child: Container(
            width: 166,
            height: 118,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(59),
            ),
            child: SvgPicture.asset(
              'assets/images/logo.svg',
              width: 61,
              height: 78,
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      ],
    );
  }
}
