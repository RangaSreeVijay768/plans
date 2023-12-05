// import 'package:beebloom_water_tracker/app/core/database/db_initializer.dart';
// import 'package:beebloom_water_tracker/app/daos/task_activity_record_dao.dart';
// import 'package:injectable/injectable.dart';
//
// @injectable
// class TaskActivitiesService {
//   final TaskActivityRecordDao taskActivityRecordDao;
//
//   const TaskActivitiesService({
//     required this.taskActivityRecordDao,
//   });
//
//   Future<List<TaskActivityRecord>> getTaskActivityRecordsBetween(
//       DateTime startTime, DateTime endTime) {
//     return taskActivityRecordDao.getTaskActivityRecordsBetween(
//         startTime, endTime);
//   }
//
//   Future<List<dynamic>> getWaterAggregateSumGroupByDate(
//       DateTime startTime, DateTime endTime) {
//     return taskActivityRecordDao.getWaterAggregateSumGroupByDate(startTime, endTime);
//   }
//
//   Future<int> getTaskActivityRecordQuantitySumBetween(
//       DateTime startTime, DateTime endTime) {
//     return taskActivityRecordDao.getTaskActivityRecordQuantitySumBetween(
//         startTime, endTime);
//   }
// }
