import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_plan_routine_details_screen_state.dart';
part 'plans_plan_routine_details_screen_cubit.freezed.dart';

class PlansPlanRoutineDetailsScreenCubit extends Cubit<PlansPlanRoutineDetailsScreenState> {
  PlansPlanRoutineDetailsScreenCubit() : super(const PlansPlanRoutineDetailsScreenState.initial());
}
