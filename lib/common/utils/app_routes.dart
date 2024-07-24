import 'package:fashion_app/src/auth/views/login_screen.dart';
import 'package:fashion_app/src/entrypoint/views/entrypoint.dart';
import 'package:fashion_app/src/onboarding/views/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../src/splashscreen/views/splashscreen_page.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final GoRouter _router = GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: '/',
  routes: [
    // TODO : Route - Splash Screen
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),

    // TODO : Route - App EntryPoint
    GoRoute(
      path: '/home',
      builder: (context, state) => const AppEntryPoint(),
    ),

    // TODO : Route - Onboarding
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => const OnboardingScreen(),
    ),

    // TODO : Route - Login Screen
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),

    // TODO : Route - Splash Screen
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),

    // TODO : Route -
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),

    // TODO : Route -
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),

    // TODO : Route -

    // TODO : Route - Splash Screen
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),

    // TODO : Route -
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),

    // TODO : Route -
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),

    // TODO : Route -
  ],
);

GoRouter get router => _router;
