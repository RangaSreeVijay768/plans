import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_plan_home_present_screen_state.dart';
part 'plans_plan_home_present_screen_cubit.freezed.dart';

class PlansPlanHomePresentScreenCubit extends Cubit<PlansPlanHomePresentScreenState> {
  PlansPlanHomePresentScreenCubit() : super(const PlansPlanHomePresentScreenState.initial());
}
