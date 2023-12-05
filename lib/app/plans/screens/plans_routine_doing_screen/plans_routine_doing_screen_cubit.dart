import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_routine_doing_screen_state.dart';
part 'plans_routine_doing_screen_cubit.freezed.dart';

class PlansRoutineDoingScreenCubit extends Cubit<PlansRoutineDoingScreenState> {
  PlansRoutineDoingScreenCubit() : super(const PlansRoutineDoingScreenState.initial());
}
