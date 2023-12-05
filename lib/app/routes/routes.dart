import 'package:beebloom_water_tracker/app/onboarding/screens/onboarding_weight_screen/onboarding_weight_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../plans/screens/plans_beecare_home_screen/plans_beecare_home_screen.dart';

final PlansBeecareHomeScreen plansBeecareHomeScreen =
    new PlansBeecareHomeScreen();

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return plansBeecareHomeScreen;
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'weight',
          builder: (BuildContext context, GoRouterState state) {
            return const OnboardingWeightScreen();
          },
        ),
      ],
    ),
  ],
);
