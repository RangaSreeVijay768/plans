import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_plan_home_past_future_screen_state.dart';
part 'plans_plan_home_past_future_screen_cubit.freezed.dart';

class PlansPlanHomePastFutureScreenCubit extends Cubit<PlansPlanHomePastFutureScreenState> {
  PlansPlanHomePastFutureScreenCubit() : super(const PlansPlanHomePastFutureScreenState.initial());
}
