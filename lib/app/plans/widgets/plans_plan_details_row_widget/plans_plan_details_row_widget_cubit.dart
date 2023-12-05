import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_plan_details_row_widget_state.dart';
part 'plans_plan_details_row_widget_cubit.freezed.dart';

class PlansPlanDetailsRowWidgetCubit extends Cubit<PlansPlanDetailsRowWidgetState> {
  PlansPlanDetailsRowWidgetCubit() : super(const PlansPlanDetailsRowWidgetState.initial());
}
