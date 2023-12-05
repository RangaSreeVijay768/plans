part of 'onboarding_weight_goal_stepper_cubit.dart';

class OnboardingWeightGoalStepperState extends Equatable {
  final double? weight;
  final int? recommendedWaterGoal;
  final int? selectedWaterGoal;

  @override
  // TODO: implement props
  List<Object?> get props => [weight, recommendedWaterGoal, selectedWaterGoal];

  const OnboardingWeightGoalStepperState._(
      {this.weight = 50,
      this.recommendedWaterGoal = 3000,
      this.selectedWaterGoal = 2500});

  const OnboardingWeightGoalStepperState.initial() : this._();

  OnboardingWeightGoalStepperState.weightChanged({required double weight})
      : this._(weight: weight);

  OnboardingWeightGoalStepperState.recommendedWaterGoalChanged(
      {required int recommendedWaterGoal})
      : this._(recommendedWaterGoal: recommendedWaterGoal);

  OnboardingWeightGoalStepperState.waterGoalChanged(
      {required int selectedWaterGoal})
      : this._(selectedWaterGoal: selectedWaterGoal);
}
