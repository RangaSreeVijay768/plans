import 'package:beebloom_water_tracker/app/onboarding/screens/onboarding_weight_goal_stepper/onboarding_weight_goal_stepper_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingWeightGoalStepper extends StatelessWidget {
  const OnboardingWeightGoalStepper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingWeightGoalStepperCubit>(
      create: (context) => OnboardingWeightGoalStepperCubit(),
      child: BlocBuilder<OnboardingWeightGoalStepperCubit,
          OnboardingWeightGoalStepperState>(
        builder: (context, state) {
          return Slider(
              onChanged: (weight) {
                BlocProvider.of<OnboardingWeightGoalStepperCubit>(context)
                    .weightChanged(weight);
              },
              value: state.weight ?? 0);
        },
      ),
    );
  }
}
