import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_plan_details_full_swiper_widget_state.dart';
part 'plans_plan_details_full_swiper_widget_cubit.freezed.dart';

class PlansPlanDetailsFullSwiperWidgetCubit extends Cubit<PlansPlanDetailsFullSwiperWidgetState> {
  PlansPlanDetailsFullSwiperWidgetCubit() : super(const PlansPlanDetailsFullSwiperWidgetState.initial());
}
