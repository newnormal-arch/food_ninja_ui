import 'package:flutter/material.dart';
import 'package:food_ninja_ui/screens/login%20screen/login.dart';
import 'package:food_ninja_ui/screens/onboarding%20screen/onboarding.dart';
import 'screens/splash screen/splash.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  OnboardingScreen.routeName: (context) => const OnboardingScreen(),
  LoginScreen.routeName: (context) => const LoginScreen(),
};
