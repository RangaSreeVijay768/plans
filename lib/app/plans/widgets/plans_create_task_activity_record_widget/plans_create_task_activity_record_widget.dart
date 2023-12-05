// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../plans_task_activity_record_between_widget/plans_task_activity_record_between_widget_cubit.dart';
//
// class TrackerTaskActivityRecordsBetweenController {}
//
// class TrackerTaskActivityRecordsBetween extends StatelessWidget {
//   final DateTime startTime;
//   final DateTime endTime;
//
//   const TrackerTaskActivityRecordsBetween(
//       {Key? key,
//         required this.startTime,
//         required this.endTime,
//         this.trackerTaskActivityRecordsBetweenController})
//       : super(key: key);
//
//   final TrackerTaskActivityRecordsBetweenController?
//   trackerTaskActivityRecordsBetweenController;
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<TrackerTaskActivityRecordsBetweenCubit>(
//       create: (context) =>
//           TrackerTaskActivityRecordsBetweenCubit(startTime, endTime),
//       child: BlocBuilder<TrackerTaskActivityRecordsBetweenCubit,
//           TrackerTaskActivityRecordsBetweenState>(
//         builder: (context, state) {
//           // const  elements=[1,2,3];
//           // return Container(child: Text('building elements'));
//           return SizedBox(
//               height: 100,
//               child: !state.taskActivityRecords.isEmpty
//                   ? ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: state.taskActivityRecords.length,
//                   itemBuilder: (context, index) {
//                     return Container(
//                       child: Column(
//                         children: [
//                           Container(
//                             width: 54,
//                             // height: 12,
//                             child: Text(
//                               state.taskActivityRecords[index].createdTime!
//                                   .day
//                                   .toString(),
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                 color: Color(0xFFB1B1B1),
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.w400,
//                               ),
//                             ),
//                           ),
//                           Container(
//                               padding: EdgeInsets.only(top: 8, bottom: 8),
//                               child: Image.asset(
//                                 "images/bubble.png",
//                                 width: 15,
//                                 height: 23,
//                               )),
//                           Container(
//                             width: 54,
//                             child: Text(
//                               state.taskActivityRecords[index].quantity
//                                   .toString() +
//                                   'ml',
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                 color: Color(0xFF2D2D2D),
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.w700,
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                     );
//                   })
//                   : Container(child: Text('No records found')));
//           ;
//         },
//       ),
//     );
//   }
// }
