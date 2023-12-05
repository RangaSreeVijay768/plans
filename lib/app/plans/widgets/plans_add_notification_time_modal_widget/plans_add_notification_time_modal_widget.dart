
import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/plans/widgets/plans_add_notification_time_modal_widget/plans_add_notification_time_modal_widget_controller.dart';
import 'package:beebloom_water_tracker/app/plans/widgets/plans_add_notification_time_modal_widget/plans_add_notification_time_modal_widget_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../styles/borders.dart';
import '../../../themes/app_colors.dart';
import '../../../styles/edge_insets.dart';
import '../plans_switch_widget/plans_switch_widget.dart';

class PlansAddNotificationTimeModalWidget extends BaseStatelessWidget<PlansAddNotificationTimeModalWidgetController, PlansAddNotificationTimeModalWidgetCubit>{
  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlansAddNotificationTimeModalWidgetCubit>(
        create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<PlansAddNotificationTimeModalWidgetCubit, PlansAddNotificationTimeModalWidgetState>(
        listener: (context, state){},
        builder: (context, state){
          double screenWidth = MediaQuery.of(context).size.width;

          return Wrap(

            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: radius.br_t_20,
                ),
                height: 500,
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      margin: edge_insets_y_24,
                      padding: edge_insets_x_24,
                      decoration: BoxDecoration(
                        border: borders.bb_1px_grey2,
                      ),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              'Add notification time',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color:
                                AppColors.textHeading,
                                fontSize: 24,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              child: Icon(Icons.close,
                                  color:
                                  AppColors.textNormal),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          padding: edge_insets_b_24,
                          child: Column(
                            children: [
                              //Evening Routing card
                              Container(
                                padding: edge_insets_x_24,
                                margin: edge_insets_t_16,
                                child: Container(
                                  decoration: ShapeDecoration(
                                    color: AppColors.white,
                                    shape:
                                    RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius
                                            .circular(
                                            5)),
                                    shadows: [
                                      BoxShadow(
                                        color: AppColors.textHeading,
                                        blurRadius: 8,
                                        offset: Offset(0, 4),
                                        spreadRadius: 0,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding:
                                        edge_insets_16,
                                        decoration:
                                        BoxDecoration(
                                          border:
                                          borders.bb_1px_grey2,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment
                                              .spaceBetween,
                                          children: [
                                            Container(
                                              child: Text(
                                                'Morning routine',
                                                style:
                                                TextStyle(
                                                  color: Color(
                                                      0xFF2D2D2D),
                                                  fontSize:
                                                  18,
                                                  fontFamily:
                                                  'Nunito',
                                                  fontWeight:
                                                  FontWeight
                                                      .w700,
                                                ),
                                              ),
                                            ),
                                            SwitchScreen()
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding:
                                        edge_insets_x_16_y_24,
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment
                                              .spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons
                                                      .notifications_outlined,
                                                  color:
                                                  AppColors.bgPrimary,
                                                  size: 22,
                                                ),
                                                Text(
                                                  '09 : 30 am',
                                                  style:
                                                  TextStyle(
                                                    color: Color(
                                                        0xFF2D2D2D),
                                                    fontSize:
                                                    18,
                                                    fontFamily:
                                                    'Nunito',
                                                    fontWeight:
                                                    FontWeight
                                                        .w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'images/create_beecare_outline.png',
                                                  width: 22,
                                                  height: 22,
                                                ),
                                                Text(
                                                  'Edit time',
                                                  style:
                                                  TextStyle(
                                                    color: Color(
                                                        0xFF6D3E75),
                                                    fontSize:
                                                    14,
                                                    fontFamily:
                                                    'Nunito',
                                                    fontWeight:
                                                    FontWeight
                                                        .w700,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),

                              //Evening Routing card
                              Container(
                                padding: edge_insets_x_24,
                                margin: edge_insets_t_16,
                                child: Container(
                                  decoration: ShapeDecoration(
                                    color: AppColors.white,
                                    shape:
                                    RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius
                                            .circular(
                                            5)),
                                    shadows: [
                                      BoxShadow(
                                        color: AppColors.textHeading,
                                        blurRadius: 8,
                                        offset: Offset(0, 4),
                                        spreadRadius: 0,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding:
                                        edge_insets_16,
                                        decoration:
                                        BoxDecoration(
                                          border:
                                          borders.bb_1px_grey2,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment
                                              .spaceBetween,
                                          children: [
                                            Container(
                                              child: Text(
                                                'Morning routine',
                                                style:
                                                TextStyle(
                                                  color: Color(
                                                      0xFF2D2D2D),
                                                  fontSize:
                                                  18,
                                                  fontFamily:
                                                  'Nunito',
                                                  fontWeight:
                                                  FontWeight
                                                      .w700,
                                                ),
                                              ),
                                            ),
                                            SwitchScreen()
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding:
                                        edge_insets_x_16_y_24,
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment
                                              .spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons
                                                      .notifications_outlined,
                                                  color:
                                                  AppColors.bgPrimary,
                                                  size: 22,
                                                ),
                                                Text(
                                                  '09 : 30 am',
                                                  style:
                                                  TextStyle(
                                                    color: Color(
                                                        0xFF2D2D2D),
                                                    fontSize:
                                                    18,
                                                    fontFamily:
                                                    'Nunito',
                                                    fontWeight:
                                                    FontWeight
                                                        .w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'images/create_beecare_outline.png',
                                                  width: 22,
                                                  height: 22,
                                                ),
                                                Text(
                                                  'Edit time',
                                                  style:
                                                  TextStyle(
                                                    color: Color(
                                                        0xFF6D3E75),
                                                    fontSize:
                                                    14,
                                                    fontFamily:
                                                    'Nunito',
                                                    fontWeight:
                                                    FontWeight
                                                        .w700,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),

                              //Evening Routing card
                              Container(
                                padding: edge_insets_x_24,
                                margin: edge_insets_t_16,
                                child: Container(
                                  decoration: ShapeDecoration(
                                    color: AppColors.white,
                                    shape:
                                    RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius
                                            .circular(
                                            5)),
                                    shadows: [
                                      BoxShadow(
                                        color: AppColors.textHeading,
                                        blurRadius: 8,
                                        offset: Offset(0, 4),
                                        spreadRadius: 0,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding:
                                        edge_insets_16,
                                        decoration:
                                        BoxDecoration(
                                          border:
                                          borders.bb_1px_grey2,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment
                                              .spaceBetween,
                                          children: [
                                            Container(
                                              child: Text(
                                                'Morning routine',
                                                style:
                                                TextStyle(
                                                  color: Color(
                                                      0xFF2D2D2D),
                                                  fontSize:
                                                  18,
                                                  fontFamily:
                                                  'Nunito',
                                                  fontWeight:
                                                  FontWeight
                                                      .w700,
                                                ),
                                              ),
                                            ),
                                            SwitchScreen()
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding:
                                        edge_insets_x_16_y_24,
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment
                                              .spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons
                                                      .notifications_outlined,
                                                  color:
                                                  AppColors.bgPrimary,
                                                  size: 22,
                                                ),
                                                Text(
                                                  '09 : 30 am',
                                                  style:
                                                  TextStyle(
                                                    color: Color(
                                                        0xFF2D2D2D),
                                                    fontSize:
                                                    18,
                                                    fontFamily:
                                                    'Nunito',
                                                    fontWeight:
                                                    FontWeight
                                                        .w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'images/create_beecare_outline.png',
                                                  width: 22,
                                                  height: 22,
                                                ),
                                                Text(
                                                  'Edit time',
                                                  style:
                                                  TextStyle(
                                                    color: Color(
                                                        0xFF6D3E75),
                                                    fontSize:
                                                    14,
                                                    fontFamily:
                                                    'Nunito',
                                                    fontWeight:
                                                    FontWeight
                                                        .w700,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: AppColors.white,
                padding: edge_insets_y_24,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment:
                  CrossAxisAlignment.center,
                  children: [
                    Positioned(
                      bottom: 18,
                      child: TextButton(
                        onPressed: () {},
                        child: Container(
                          width: screenWidth * 0.7,
                          padding: edge_insets_x_40_y_10,
                          decoration: BoxDecoration(
                              borderRadius: radius.br_30,
                              color: AppColors.bgPrimary),
                          child: Text(
                            'Done',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  PlansAddNotificationTimeModalWidgetCubit createCubitAndAssignToController(BuildContext context) {
    PlansAddNotificationTimeModalWidgetCubit plansAddNotificationTimeModalWidgetCubit =
        PlansAddNotificationTimeModalWidgetCubit();
    controller?.cubit = plansAddNotificationTimeModalWidgetCubit;
    return plansAddNotificationTimeModalWidgetCubit;
  }

}
