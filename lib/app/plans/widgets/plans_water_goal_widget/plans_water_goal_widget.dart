// import 'dart:math';
// import 'package:beebloom_water_tracker/app/plans/widgets/plans_water_goal_widget/plans_water_goal_widget_cubit.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:percent_indicator/circular_percent_indicator.dart';
//
// class TrackerWaterGoalWidgetController {
//   TrackerWaterGoalWidgetCubit? trackerWaterGoalWidgetCubit;
//   BuildContext? context;
//
//
//   TrackerWaterGoalWidgetController(){
//   }
//
//   reloadWaterGoal() {
//     // print('calling value' + trackerWaterGoalWidgetCubit!.toString());
//     trackerWaterGoalWidgetCubit!.getCurrentWaterQuantityAndGoalQuantity();
//   }
//
//   void dispose() {
//
//   }
// }
//
// class TrackerWaterGoalWidget extends StatelessWidget {
//   TrackerWaterGoalWidgetController? trackerWaterGoalWidgetController;
//
//   TrackerWaterGoalWidget(
//       TrackerWaterGoalWidgetController? trackerWaterGoalWidgetController,
//       Key? key)
//       : super(key: key) {
//     this.trackerWaterGoalWidgetController = trackerWaterGoalWidgetController;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<TrackerWaterGoalWidgetCubit>(
//       create: (context) {
//         TrackerWaterGoalWidgetCubit cubit = new TrackerWaterGoalWidgetCubit();
//         trackerWaterGoalWidgetController!.trackerWaterGoalWidgetCubit = cubit;
//
//         if (trackerWaterGoalWidgetController != null) {
//           trackerWaterGoalWidgetController!.context = context;
//           trackerWaterGoalWidgetController!.trackerWaterGoalWidgetCubit = cubit;
//         }
//         return cubit;
//       },
//       child:
//       BlocBuilder<TrackerWaterGoalWidgetCubit, TrackerWaterGoalWidgetState>(
//         builder: (context, state) {
//           return Container(
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 gradient: const LinearGradient(
//                   begin: Alignment.topCenter,
//                   end: Alignment(0, 0.8),
//                   colors: <Color>[
//                     Color.fromRGBO(0, 147, 183, 1),
//                     Color.fromRGBO(255, 255, 255, 0.4)
//                   ],
//                 )),
//             margin: EdgeInsets.only(top: 20, bottom: 10, left: 16, right: 16),
//             padding: const EdgeInsets.fromLTRB(80, 50, 80, 50),
//             child: Container(
//               // height: 200,
//               // width: 200,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(100),
//                 color: Colors.white54,
//               ),
//               child: CircularPercentIndicator(
//                 radius: 100.0,
//                 lineWidth: 13.0,
//                 percent: min(state.initialQuantity / state.goalQuantity, 1.0),
//                 center: Container(
//                   height: 200,
//                   // margin: EdgeInsets.all(10),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Text.rich(TextSpan(
//                           text: "${state.initialQuantity}ml",
//                           style: TextStyle(
//                               fontSize: 32,
//                               fontWeight: FontWeight.w700,
//                               fontFamily: 'Nunito'),
//                           children: [
//                             TextSpan(
//                                 text: "/ ${state.goalQuantity / 1000}l",
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                 )),
//                           ])),
//                       Column(
//                         children: [
//                           Container(
//                             margin: const EdgeInsets.only(bottom: 8),
//                             child: Image.asset(
//                               "images/fish.png",
//                               width: 37,
//                               height: 37,
//                             ),
//                           ),
//                           const Text(
//                             "ocean fish!",
//                             style: TextStyle(
//                                 fontSize: 14, color: Color(0xFF0093B7)),
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 // backgroundColor: Color(0xFFEAEAEA),
//                 progressColor: Color(0xFF0093B7),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
