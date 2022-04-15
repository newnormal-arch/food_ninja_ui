import 'package:flutter/material.dart';
import 'screens/login screen/login.dart';
import 'screens/onboarding screen/onboarding.dart';
import 'screens/register screen/register.dart';
import 'screens/splash screen/splash.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  OnboardingScreen.routeName: (context) => const OnboardingScreen(),
  LoginScreen.routeName: (context) => const LoginScreen(),
  RegisterScreen.routeName: (context) => const RegisterScreen(),
};
