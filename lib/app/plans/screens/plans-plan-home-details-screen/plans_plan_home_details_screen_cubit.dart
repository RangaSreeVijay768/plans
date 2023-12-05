import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_plan_home_details_screen_state.dart';
part 'plans_plan_home_details_screen_cubit.freezed.dart';

class PlansPlanHomeDetailsScreenCubit extends Cubit<PlansPlanHomeDetailsScreenState> {
  PlansPlanHomeDetailsScreenCubit() : super(const PlansPlanHomeDetailsScreenState.initial());
}
