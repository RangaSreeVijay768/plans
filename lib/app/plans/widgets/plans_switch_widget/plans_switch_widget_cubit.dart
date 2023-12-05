import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_switch_widget_state.dart';
part 'plans_switch_widget_cubit.freezed.dart';

class PlansSwitchWidgetCubit extends Cubit<PlansSwitchWidgetState> {
  PlansSwitchWidgetCubit() : super(const PlansSwitchWidgetState.initial(value: true));

  void UpdateState(bool value) {
    emit(state.copyWith(value: value));
  }

}
