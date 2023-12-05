import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_plan_see_details_screen_state.dart';
part 'plans_plan_see_details_screen_cubit.freezed.dart';

class PlansPlanSeeDetailsScreenCubit extends Cubit<PlansPlanSeeDetailsScreenState> {
  PlansPlanSeeDetailsScreenCubit() : super(const PlansPlanSeeDetailsScreenState.initial());
}
