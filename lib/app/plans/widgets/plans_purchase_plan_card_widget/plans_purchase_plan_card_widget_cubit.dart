import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_purchase_plan_card_widget_state.dart';
part 'plans_purchase_plan_card_widget_cubit.freezed.dart';

class PlansPurchasePlanCardWidgetCubit extends Cubit<PlansPurchasePlanCardWidgetState> {
  PlansPurchasePlanCardWidgetCubit() : super(const PlansPurchasePlanCardWidgetState.initial());
}
