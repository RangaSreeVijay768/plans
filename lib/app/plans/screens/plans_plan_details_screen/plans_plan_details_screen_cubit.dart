import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_plan_details_screen_state.dart';
part 'plans_plan_details_screen_cubit.freezed.dart';

class PlansPlanDetailsScreenCubit extends Cubit<PlansPlanDetailsScreenState> {
  PlansPlanDetailsScreenCubit() : super(const PlansPlanDetailsScreenState.initial());
}
