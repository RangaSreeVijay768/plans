// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:beebloom_water_tracker/app/services/task_activities_service.dart';
//
// import 'package:get_it/get_it.dart';
//
// part 'plans_water_goal_widget_state.dart';
//
// // part 'tracker_water_goal_widget_state.dart';
//
// class PlansWaterGoalWidgetCubit extends Cubit<PlansWaterGoalWidgetState> {
//   PlansWaterGoalWidgetCubit() : super(PlansWaterGoalWidgetInitial());
// }
//
//
//
//
// class TrackerWaterGoalWidgetCubit extends Cubit<TrackerWaterGoalWidgetState> {
//   late TaskActivitiesService _taskAcitivitiesService;
//
//   TrackerWaterGoalWidgetCubit()
//       : super(TrackerWaterGoalWidgetInitial(
//       initialQuantity: 0, goalQuantity: 3000)) {
//     _taskAcitivitiesService = GetIt.instance<TaskActivitiesService>();
//     getCurrentWaterQuantityAndGoalQuantity();
//   }
//
//   getCurrentWaterQuantityAndGoalQuantity() async {
//     int quantity =
//     await _taskAcitivitiesService.getTaskActivityRecordQuantitySumBetween(
//         DateTime.now(), DateTime.now());
//     emit(TrackerWaterGoalWidgetLoadedState(
//         goalQuantity: state.goalQuantity,
//         initialQuantity: quantity.toDouble()));
//   }
// }
