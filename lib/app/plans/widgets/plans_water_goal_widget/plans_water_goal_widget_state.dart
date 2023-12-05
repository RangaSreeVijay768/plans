// part of 'plans_water_goal_widget_cubit.dart';
// // part of 'tracker_water_goal_widget_cubit.dart';
//
// abstract class PlansWaterGoalWidgetState extends Equatable {
//   const PlansWaterGoalWidgetState();
// }
//
// class PlansWaterGoalWidgetInitial extends PlansWaterGoalWidgetState {
//   @override
//   List<Object> get props => [];
// }
//
//
// abstract class TrackerWaterGoalWidgetState extends Equatable {
//   final double goalQuantity;
//   final double initialQuantity;
//
//   const TrackerWaterGoalWidgetState({
//     required this.goalQuantity,
//     required this.initialQuantity,
//   });
//
//   @override
//   List<Object> get props => [goalQuantity, initialQuantity];
//
// }
//
// class TrackerWaterGoalWidgetInitial extends TrackerWaterGoalWidgetState {
//   @override
//   List<Object> get props => [goalQuantity, initialQuantity];
//
//   TrackerWaterGoalWidgetInitial(
//       {required super.goalQuantity, required super.initialQuantity});
//
//
// }
//
// class TrackerWaterGoalWidgetLoadedState extends TrackerWaterGoalWidgetState {
//   const TrackerWaterGoalWidgetLoadedState(
//       {required super.goalQuantity, required super.initialQuantity});
//
//
//   TrackerWaterGoalWidgetLoadedState copyWith({
//     double? goalQuantity,
//     double? initialQuantity,
//   }) {
//     return TrackerWaterGoalWidgetLoadedState(
//       goalQuantity: goalQuantity ?? this.goalQuantity,
//       initialQuantity: initialQuantity ?? this.initialQuantity,
//     );
//   }
//
// }
