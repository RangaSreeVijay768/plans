import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_plan_details_circle_widget_state.dart';
part 'plans_plan_details_circle_widget_cubit.freezed.dart';

class PlansPlanDetailsCircleWidgetCubit extends Cubit<PlansPlanDetailsCircleWidgetState> {
  PlansPlanDetailsCircleWidgetCubit() : super(const PlansPlanDetailsCircleWidgetState.initial());
}
