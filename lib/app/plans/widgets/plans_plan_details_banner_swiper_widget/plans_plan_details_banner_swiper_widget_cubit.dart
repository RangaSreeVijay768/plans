import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_plan_details_banner_swiper_widget_state.dart';
part 'plans_plan_details_banner_swiper_widget_cubit.freezed.dart';

class PlansPlanDetailsBannerSwiperWidgetCubit extends Cubit<PlansPlanDetailsBannerSwiperWidgetState> {
  PlansPlanDetailsBannerSwiperWidgetCubit() : super(const PlansPlanDetailsBannerSwiperWidgetState.initial());
}
