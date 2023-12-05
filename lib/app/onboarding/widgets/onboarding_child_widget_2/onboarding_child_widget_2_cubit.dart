import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'onboarding_child_widget_2_state.dart';

class OnboardingChildWidget2Cubit extends Cubit<OnboardingChildWidget2State> {
  OnboardingChildWidget2Cubit() : super(OnboardingChildWidget2Initial());

  emitMinuteState(int minute) =>
      emit(OnboardingChildWidget2MinuteState(minute));
}
