import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_plan_subscription_details_next_widget_state.dart';
part 'plans_plan_subscription_details_next_widget_cubit.freezed.dart';

class PlansPlanSubscriptionDetailsNextWidgetCubit extends Cubit<PlansPlanSubscriptionDetailsNextWidgetState> {
  PlansPlanSubscriptionDetailsNextWidgetCubit() : super(const PlansPlanSubscriptionDetailsNextWidgetState.initial());
}
