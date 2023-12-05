import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'onboarding_weight_goal_stepper_state.dart';

class OnboardingWeightGoalStepperCubit
    extends Cubit<OnboardingWeightGoalStepperState> {
  OnboardingWeightGoalStepperCubit()
      : super(OnboardingWeightGoalStepperState.initial());

  weightChanged(double weight) =>
      emit(OnboardingWeightGoalStepperState.weightChanged(weight: weight));
}
