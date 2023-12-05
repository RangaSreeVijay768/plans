import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans_routine_intermediate_screen/plans_routine_intermediate_screen_controller.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans_routine_intermediate_screen/plans_routine_intermediate_screen_cubit.dart';
import 'package:beebloom_water_tracker/app/styles/borders.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../themes/app_colors.dart';
import '../plans_routine_waiting_screen/plans_routine_waiting_screen.dart';

class PlansRoutineIntermediateScreen extends BaseStatelessWidget<PlansRoutineIntermediateScreenController, PlansRoutineIntermediateScreenCubit>{
  const PlansRoutineIntermediateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlansRoutineIntermediateScreenCubit>(
        create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<PlansRoutineIntermediateScreenCubit, PlansRoutineIntermediateScreenState>(
        listener: (context, state){},
        builder: (context, state){
          double screenWidth = MediaQuery.of(context).size.width;

          return Scaffold(
            appBar: AppBar(
              title: const Text(''),
            ),
            body: Container(
              padding: edge_insets_24,
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            margin: edge_insets_b_16,
                            padding: edge_insets_24,
                            decoration: BoxDecoration(
                              borderRadius: radius.br_5,
                              color: AppColors.grey3,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: edge_insets_b_24,
                                  child: const Text(
                                    'Day 2',
                                    style: TextStyle(
                                      color: Color(0xFF2D2D2D),
                                      fontSize: Fonts.fontSize18,
                                      fontFamily: Fonts.fontNunito,
                                      fontWeight: Fonts.f700,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: edge_insets_b_9,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                              child: Icon(
                                                Icons.av_timer,
                                                size: 22,
                                                color: AppColors.bgPrimary,
                                              )),
                                          Container(
                                            margin: edge_insets_l_8,
                                            child: const Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: '20',
                                                    style: TextStyle(
                                                      color: Color(0xFF2D2D2D),
                                                      fontSize: Fonts.fontSize18,
                                                      fontFamily: Fonts.fontNunito,
                                                      fontWeight: Fonts.f400,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: ' ',
                                                    style: TextStyle(
                                                      color: Color(0xFF2D2D2D),
                                                      fontSize: Fonts.fontSize14,
                                                      fontFamily: Fonts.fontNunito,
                                                      fontWeight: Fonts.f400,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: 'min',
                                                    style: TextStyle(
                                                      color: Color(0xFF787878),
                                                      fontSize: Fonts.fontSize14,
                                                      fontFamily: Fonts.fontNunito,
                                                      fontWeight: Fonts.f400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                              child: const Icon(
                                                Icons.content_paste,
                                                size: 22,
                                                color: AppColors.bgPrimary,
                                              )),
                                          Container(
                                            margin: edge_insets_l_8,
                                            child: const Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: '15',
                                                    style: TextStyle(
                                                      color: Color(0xFF2D2D2D),
                                                      fontSize: Fonts.fontSize18,
                                                      fontFamily: Fonts.fontNunito,
                                                      fontWeight: Fonts.f400,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: ' ',
                                                    style: TextStyle(
                                                      color: Color(0xFF2D2D2D),
                                                      fontSize: Fonts.fontSize14,
                                                      fontFamily: Fonts.fontNunito,
                                                      fontWeight: Fonts.f400,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: 'steps',
                                                    style: TextStyle(
                                                      color: Color(0xFF787878),
                                                      fontSize: Fonts.fontSize14,
                                                      fontFamily: Fonts.fontNunito,
                                                      fontWeight: Fonts.f400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            child: Image.asset(
                                              'images/coin.png',
                                              width: 22,
                                              height: 22,
                                            ),
                                          ),
                                          Container(
                                            margin: edge_insets_l_8,
                                            child: const Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: '15',
                                                    style: TextStyle(
                                                      color: Color(0xFF2D2D2D),
                                                      fontSize: Fonts.fontSize18,
                                                      fontFamily: Fonts.fontNunito,
                                                      fontWeight: Fonts.f400,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: ' ',
                                                    style: TextStyle(
                                                      color: Color(0xFF2D2D2D),
                                                      fontSize: Fonts.fontSize14,
                                                      fontFamily: Fonts.fontNunito,
                                                      fontWeight: Fonts.f400,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: 'coins',
                                                    style: TextStyle(
                                                      color: Color(0xFF787878),
                                                      fontSize: Fonts.fontSize14,
                                                      fontFamily: Fonts.fontNunito,
                                                      fontWeight: Fonts.f400,
                                                    ),
                                                  ),
                                                ],
                                              ),
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

                          //Routin tiles
                          Container(
                            margin: edge_insets_t_16,
                            padding: edge_insets_16,
                            decoration: BoxDecoration(
                                border: borders.b_1px_grey2, borderRadius: radius.br_5),
                            child: Row(
                              children: [
                                Container(
                                  margin: edge_insets_r_16,
                                  child: Image.asset(
                                    'images/plan_routine_details_img.png',
                                    width: 55,
                                    height: 55,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: edge_insets_b_16,
                                      child: const Text(
                                        'Face mask',
                                        style: TextStyle(
                                          color: Color(0xFF2D2D2D),
                                          fontSize: Fonts.fontSize18,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f700,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: const Icon(
                                              Icons.av_timer,
                                              size: 17,
                                              color: AppColors.bgPrimary,
                                            ),
                                          ),
                                          Container(
                                            margin: edge_insets_l_8,
                                            child: const Text(
                                              '60 sec',
                                              style: TextStyle(
                                                color: Color(0xFF2D2D2D),
                                                fontSize: Fonts.fontSize14,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f400,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),

                          //Routin tiles
                          Container(
                            margin: edge_insets_t_16,
                            padding: edge_insets_16,
                            decoration: BoxDecoration(
                                border: borders.b_1px_grey2, borderRadius: radius.br_5),
                            child: Row(
                              children: [
                                Container(
                                  margin: edge_insets_r_16,
                                  child: Image.asset(
                                    'images/plan_routine_details_img.png',
                                    width: 55,
                                    height: 55,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: edge_insets_b_16,
                                      child: const Text(
                                        'Face mask',
                                        style: TextStyle(
                                          color: Color(0xFF2D2D2D),
                                          fontSize: Fonts.fontSize18,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f700,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: const Icon(
                                              Icons.av_timer,
                                              size: 17,
                                              color: AppColors.bgPrimary,
                                            ),
                                          ),
                                          Container(
                                            margin: edge_insets_l_8,
                                            child: const Text(
                                              '60 sec',
                                              style: TextStyle(
                                                color: Color(0xFF2D2D2D),
                                                fontSize: Fonts.fontSize14,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f400,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),

                          //Routin tiles
                          Container(
                            margin: edge_insets_t_16,
                            padding: edge_insets_16,
                            decoration: BoxDecoration(
                                border: borders.b_1px_grey2, borderRadius: radius.br_5),
                            child: Row(
                              children: [
                                Container(
                                  margin: edge_insets_r_16,
                                  child: Image.asset(
                                    'images/plan_routine_details_img.png',
                                    width: 55,
                                    height: 55,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: edge_insets_b_16,
                                      child: const Text(
                                        'Face mask',
                                        style: TextStyle(
                                          color: Color(0xFF2D2D2D),
                                          fontSize: Fonts.fontSize18,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f700,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: const Icon(
                                              Icons.av_timer,
                                              size: 17,
                                              color: AppColors.bgPrimary,
                                            ),
                                          ),
                                          Container(
                                            margin: edge_insets_l_8,
                                            child: const Text(
                                              '60 sec',
                                              style: TextStyle(
                                                color: Color(0xFF2D2D2D),
                                                fontSize: Fonts.fontSize14,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f400,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),

                          //Routin tiles
                          Container(
                            margin: edge_insets_t_16,
                            padding: edge_insets_16,
                            decoration: BoxDecoration(
                                border: borders.b_1px_grey2, borderRadius: radius.br_5),
                            child: Row(
                              children: [
                                Container(
                                  margin: edge_insets_r_16,
                                  child: Image.asset(
                                    'images/plan_routine_details_img.png',
                                    width: 55,
                                    height: 55,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: edge_insets_b_16,
                                      child: const Text(
                                        'Face mask',
                                        style: TextStyle(
                                          color: Color(0xFF2D2D2D),
                                          fontSize: Fonts.fontSize18,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f700,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: const Icon(
                                              Icons.av_timer,
                                              size: 17,
                                              color: AppColors.bgPrimary,
                                            ),
                                          ),
                                          Container(
                                            margin: edge_insets_l_8,
                                            child: const Text(
                                              '60 sec',
                                              style: TextStyle(
                                                color: Color(0xFF2D2D2D),
                                                fontSize: Fonts.fontSize14,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f400,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),

                          //Routin tiles
                          Container(
                            margin: edge_insets_t_16,
                            padding: edge_insets_16,
                            decoration: BoxDecoration(
                                border: borders.b_1px_grey2, borderRadius: radius.br_5),
                            child: Row(
                              children: [
                                Container(
                                  margin: edge_insets_r_16,
                                  child: Image.asset(
                                    'images/plan_routine_details_img.png',
                                    width: 55,
                                    height: 55,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: edge_insets_b_16,
                                      child: const Text(
                                        'Face mask',
                                        style: TextStyle(
                                          color: Color(0xFF2D2D2D),
                                          fontSize: Fonts.fontSize18,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f700,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: const Icon(
                                              Icons.av_timer,
                                              size: 17,
                                              color: AppColors.bgPrimary,
                                            ),
                                          ),
                                          Container(
                                            margin: edge_insets_l_8,
                                            child: const Text(
                                              '60 sec',
                                              style: TextStyle(
                                                color: Color(0xFF2D2D2D),
                                                fontSize: Fonts.fontSize14,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f400,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),

                          //Routin tiles
                          Container(
                            margin: edge_insets_t_16,
                            padding: edge_insets_16,
                            decoration: BoxDecoration(
                                border: borders.b_1px_grey2, borderRadius: radius.br_5),
                            child: Row(
                              children: [
                                Container(
                                  margin: edge_insets_r_16,
                                  child: Image.asset(
                                    'images/plan_routine_details_img.png',
                                    width: 55,
                                    height: 55,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: edge_insets_b_16,
                                      child: const Text(
                                        'Face mask',
                                        style: TextStyle(
                                          color: Color(0xFF2D2D2D),
                                          fontSize: Fonts.fontSize18,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f700,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: const Icon(
                                              Icons.av_timer,
                                              size: 17,
                                              color: AppColors.bgPrimary,
                                            ),
                                          ),
                                          Container(
                                            margin: edge_insets_l_8,
                                            child: const Text(
                                              '60 sec',
                                              style: TextStyle(
                                                color: Color(0xFF2D2D2D),
                                                fontSize: Fonts.fontSize14,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f400,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 60,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PlansRoutineWaitingScreen()));
                      },
                      child: Container(
                        width: screenWidth * 0.7,
                        padding: edge_insets_y_16,
                        margin: edge_insets_t_16,
                        decoration: BoxDecoration(
                            color: AppColors.bgPrimary, borderRadius: radius.br_30),
                        child: const Text(
                          'start routine',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: Fonts.fontSize18,
                            fontFamily: Fonts.fontNunito,
                            fontWeight: Fonts.f400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  PlansRoutineIntermediateScreenCubit createCubitAndAssignToController(BuildContext context) {
    PlansRoutineIntermediateScreenCubit plansRoutineIntermediateScreenCubit =
        PlansRoutineIntermediateScreenCubit();
    controller?.cubit = plansRoutineIntermediateScreenCubit;
    return plansRoutineIntermediateScreenCubit;
  }

}
