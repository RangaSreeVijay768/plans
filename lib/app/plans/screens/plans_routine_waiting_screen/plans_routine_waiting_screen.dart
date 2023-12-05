import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans_routine_doing_screen/plans_routine_doing_screen.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans_routine_waiting_screen/plans_routine_waiting_screen_controller.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans_routine_waiting_screen/plans_routine_waiting_screen_cubit.dart';
import 'package:beebloom_water_tracker/app/styles/borders.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:beebloom_water_tracker/app/themes/shadows.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PlansRoutineWaitingScreen extends BaseStatelessWidget<PlansRoutineWaitingScreenController, PlansRoutineWaitingScreenCubit>{
  const PlansRoutineWaitingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlansRoutineWaitingScreenCubit>(
        create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<PlansRoutineWaitingScreenCubit, PlansRoutineWaitingScreenState>(
        listener: (context, state){},
        builder: (context, state){
          double screenWidth = MediaQuery.of(context).size.width;


          return Scaffold(
            body: Container(
              padding: edge_insets_24,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: edge_insets_b_16,
                    child: const Text(
                      'Routine starting in...',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: Fonts.fontSize24,
                        fontFamily: Fonts.fontNunito,
                        fontWeight: Fonts.f400,
                      ),
                    ),
                  ),
                  Container(
                    child: const Text(
                      'Subheading here',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF787878),
                        fontSize: Fonts.fontSize14,
                        fontFamily: Fonts.fontNunito,
                        fontWeight: Fonts.f400,
                      ),
                    ),
                  ),

                  // CircularPercentIndicator
                  Container(
                    margin: edge_insets_t_65,
                    child: CircularPercentIndicator(
                      lineWidth: 15,
                      progressColor: AppColors.bgPrimary,
                      backgroundColor: AppColors.grey1,
                      percent: 0.3,
                      radius: 100,
                      circularStrokeCap: CircularStrokeCap.round,
                      center: const Text(
                        '00 : 05',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF2D2D2D),
                          fontSize: Fonts.fontSize32,
                          fontFamily: Fonts.fontNunito,
                          fontWeight: Fonts.f700,
                        ),
                      ),
                    ),
                  ),

                  // Add 10 and skip buttons
                  Container(
                    margin: edge_insets_t_32,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            width: screenWidth*0.28,
                            padding: edge_insets_x_12_y_6,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9999),
                              ),
                              color: AppColors.white,
                              shadows: [shadows.bs_primary],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.add,
                                  size: 24,
                                  color: AppColors.bgPrimary,
                                ),
                                Container(
                                  child: const Text(
                                    '10 sec',
                                    style: TextStyle(
                                      color: AppColors.bgPrimary,
                                      fontSize: Fonts.fontSize18,
                                      fontFamily: Fonts.fontNunito,
                                      fontWeight: Fonts.f400,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => PlansRoutineDoingScreen()));
                          },
                          child: Container(
                            width: screenWidth*0.28,
                            padding: edge_insets_x_12_y_6,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9999),
                              ),
                              color: AppColors.white,
                              shadows: [shadows.bs_primary],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.skip_next_outlined,
                                  size: 24,
                                  color: AppColors.bgPrimary,
                                ),
                                Container(
                                  child: const Text(
                                    'Skip',
                                    style: TextStyle(
                                      color: Color(0xFF6D3E75),
                                      fontSize: Fonts.fontSize18,
                                      fontFamily: Fonts.fontNunito,
                                      fontWeight: Fonts.f400,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Bottom card
                  Container(
                    margin: edge_insets_t_100,
                    padding: edge_insets_24,
                    decoration: BoxDecoration(
                        borderRadius: radius.br_10, color: AppColors.grey3),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: edge_insets_b_24,
                          child: const Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Step 2 ',
                                  style: TextStyle(
                                    fontSize: Fonts.fontSize18,
                                    fontFamily: Fonts.fontNunito,
                                    fontWeight: Fonts.f400,
                                  ),
                                ),
                                TextSpan(
                                  text: '/ 3',
                                  style: TextStyle(
                                    color: Color(0xFF787878),
                                    fontSize: Fonts.fontSize18,
                                    fontFamily: Fonts.fontNunito,
                                    fontWeight: Fonts.f400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset(
                              'images/plan_routine_details_img.png',
                              width: 55,
                              height: 55,
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: edge_insets_b_16,
                                  child: const Text(
                                    'Cleansing',
                                    style: TextStyle(
                                      color: Color(0xFF2D2D2D),
                                      fontSize: Fonts.fontSize18,
                                      fontFamily: Fonts.fontNunito,
                                      fontWeight: Fonts.f700,
                                    ),
                                  ),
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.av_timer,
                                      color: AppColors.bgPrimary,
                                      size: 17,
                                    ),
                                    Text(
                                      '60 sec',
                                      style: TextStyle(
                                        color: Color(0xFF2D2D2D),
                                        fontSize: Fonts.fontSize14,
                                        fontFamily: Fonts.fontNunito,
                                        fontWeight: Fonts.f400,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const Text(
                              'How to do ?',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: AppColors.bgPrimary,
                                fontSize: Fonts.fontSize14,
                                fontFamily: Fonts.fontNunito,
                                fontWeight: Fonts.f700,
                              ),
                            ),
                          ],
                        ),
                      ],
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
  PlansRoutineWaitingScreenCubit createCubitAndAssignToController(BuildContext context) {
    PlansRoutineWaitingScreenCubit plansRoutineWaitingScreenCubit =
        PlansRoutineWaitingScreenCubit();
    controller?.cubit = plansRoutineWaitingScreenCubit;
    return plansRoutineWaitingScreenCubit;
  }

}