// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
//
// import 'package:beebloom_water_tracker/app/core/database/db_initializer.dart';
// import 'package:beebloom_water_tracker/app/services/date_time_utils.dart';
// import 'package:beebloom_water_tracker/app/services/task_activities_service.dart';
//
// import 'package:get_it/get_it.dart';
//
// // part 'tracker_task_activity_records_between_state.dart';
//
// part 'plans_task_activity_record_between_widget_state.dart';
//
// class PlansTaskActivityRecordBetweenWidgetCubit extends Cubit<PlansTaskActivityRecordBetweenWidgetState> {
//   PlansTaskActivityRecordBetweenWidgetCubit() : super(PlansTaskActivityRecordBetweenWidgetInitial());
// }
//
//
//
// class TrackerTaskActivityRecordsBetweenCubit
//     extends Cubit<TrackerTaskActivityRecordsBetweenState> {
//   TaskActivitiesService? taskActivitiesService;
//
//   TrackerTaskActivityRecordsBetweenCubit(DateTime startTime, DateTime endTime)
//       : super(TrackerTaskActivityRecordsBetweenInitialState(
//       startTime: startTime, endTime: endTime, taskActivityRecords: [])) {
//     this.taskActivitiesService = GetIt.instance<TaskActivitiesService>();
//     this.getTaskActivityRecords();
//   }
//
//   getTaskActivityRecords() async {
//     List<dynamic> taskActivityRecords = await this
//         .taskActivitiesService!
//         .getWaterAggregateSumGroupByDate(
//         AppDateTimeUtils.getStartTimeOfDateTime(DateTime.now()),
//         AppDateTimeUtils.getEndTimeOfDateTime(DateTime.now()));
//     print(taskActivityRecords);
//     // addTaskActivityRecords(taskActivityRecords);
//   }
//
//   addTaskActivityRecords(List<TaskActivityRecord> taskActivityRecords) =>
//       emit(TrackerTaskActivityRecordsBetweenLoadedState(
//           startTime: state.startTime,
//           endTime: state.endTime,
//           taskActivityRecords: taskActivityRecords));
// }
