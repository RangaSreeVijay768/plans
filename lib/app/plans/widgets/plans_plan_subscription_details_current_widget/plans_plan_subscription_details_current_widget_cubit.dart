import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_plan_subscription_details_current_widget_state.dart';
part 'plans_plan_subscription_details_current_widget_cubit.freezed.dart';

class PlansPlanSubscriptionDetailsCurrentWidgetCubit extends Cubit<PlansPlanSubscriptionDetailsCurrentWidgetState> {
  PlansPlanSubscriptionDetailsCurrentWidgetCubit() : super(const PlansPlanSubscriptionDetailsCurrentWidgetState.initial());
}
