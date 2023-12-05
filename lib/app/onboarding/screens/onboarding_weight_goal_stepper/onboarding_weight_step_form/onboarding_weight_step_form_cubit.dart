import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_weight_step_form_state.dart';
part 'onboarding_weight_step_form_cubit.freezed.dart';

class OnboardingWeightStepFormCubit extends Cubit<OnboardingWeightStepFormState> {
  OnboardingWeightStepFormCubit() : super(const OnboardingWeightStepFormState.initial());
}
