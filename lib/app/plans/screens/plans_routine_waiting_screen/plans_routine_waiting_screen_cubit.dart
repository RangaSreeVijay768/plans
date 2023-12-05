import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_routine_waiting_screen_state.dart';
part 'plans_routine_waiting_screen_cubit.freezed.dart';

class PlansRoutineWaitingScreenCubit extends Cubit<PlansRoutineWaitingScreenState> {
  PlansRoutineWaitingScreenCubit() : super(const PlansRoutineWaitingScreenState.initial());
}
