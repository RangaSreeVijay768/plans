import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'onboarding_child_widget_1_state.dart';

class OnboardingChildWidget1Cubit extends Cubit<OnboardingChildWidget1State> {
  OnboardingChildWidget1Cubit() : super(OnboardingChildWidget1Initial());

  void emitEvent1(int amount) => emit(OnboardingChildWidget1Event1(amount));
}
