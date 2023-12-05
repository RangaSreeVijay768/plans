import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_plan_details_row_swiper_widget_state.dart';
part 'plans_plan_details_row_swiper_widget_cubit.freezed.dart';

class PlansPlanDetailsRowSwiperWidgetCubit extends Cubit<PlansPlanDetailsRowSwiperWidgetState> {
  PlansPlanDetailsRowSwiperWidgetCubit() : super(const PlansPlanDetailsRowSwiperWidgetState.initial());
}
