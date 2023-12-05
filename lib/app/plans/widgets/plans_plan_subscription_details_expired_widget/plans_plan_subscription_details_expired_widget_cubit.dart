import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_plan_subscription_details_expired_widget_state.dart';
part 'plans_plan_subscription_details_expired_widget_cubit.freezed.dart';

class PlansPlanSubscriptionDetailsExpiredWidgetCubit extends Cubit<PlansPlanSubscriptionDetailsExpiredWidgetState> {
  PlansPlanSubscriptionDetailsExpiredWidgetCubit() : super(const PlansPlanSubscriptionDetailsExpiredWidgetState.initial());
}
