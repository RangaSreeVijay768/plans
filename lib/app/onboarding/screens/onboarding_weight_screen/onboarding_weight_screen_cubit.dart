import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'onboarding_weight_screen_state.dart';

class OnboardingWeightScreenCubit extends Cubit<OnboardingWeightScreenState> {
  OnboardingWeightScreenCubit() : super(OnboardingWeightScreenInitial());
}
