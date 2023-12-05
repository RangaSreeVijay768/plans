import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans_routine_coin_earning_screen/plans_routine_coin_earning_screen.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans_routine_doing_screen/plans_routine_doing_screen_controller.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans_routine_doing_screen/plans_routine_doing_screen_cubit.dart';
import 'package:beebloom_water_tracker/app/styles/borders.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:beebloom_water_tracker/app/themes/shadows.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlansRoutineDoingScreen extends BaseStatelessWidget<PlansRoutineDoingScreenController, PlansRoutineDoingScreenCubit>{
  const PlansRoutineDoingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlansRoutineDoingScreenCubit>(
        create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<PlansRoutineDoingScreenCubit, PlansRoutineDoingScreenState>(
        listener: (context, state){},
        builder: (context, state){
          double screenWidth = MediaQuery.of(context).size.width;

          double screenHeight = MediaQuery.of(context).size.height;

          return Scaffold(
            body: Container(
              decoration: BoxDecoration(
                // color: COLOR_DARK_GREY,
                  border: borders.b_1px_black),
              child: Column(
                children: [
                  Image.asset(
                    'images/beige_and_green_basic_skincare_beauty.gif',
                    height: screenHeight * 0.6,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    transform: Matrix4.translationValues(0.0, -20.0, 0.0),
                    decoration: const BoxDecoration(
                        borderRadius: radius.br_t_20,
                      color: AppColors.white,
                      boxShadow: [shadows.bs_primary]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: edge_insets_24,
                          child: Column(
                            children: [
                              Container(
                                padding: edge_insets_b_24,
                                decoration: BoxDecoration(
                                  border: borders.bb_1px_grey2,
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Step 2:',
                                            style: TextStyle(
                                              color: AppColors.textGrey,
                                              fontSize: Fonts.fontSize18,
                                              fontFamily: Fonts.fontNunito,
                                              fontWeight: Fonts.f400,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' Cleansing',
                                            style: TextStyle(
                                              fontSize: Fonts.fontSize18,
                                              fontFamily: Fonts.fontNunito,
                                              fontWeight: Fonts.f700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
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
                              ),
                              Container(
                                padding: edge_insets_y_32,
                                child: const Text(
                                  '00 : 05',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: Fonts.fontSize32,
                                    fontFamily: Fonts.fontNunito,
                                    fontWeight: Fonts.f700,
                                  ),
                                ),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Container(
                                        // width: screenWidth * 0.28,
                                        padding: edge_insets_x_12_y_6,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(9999),
                                          ),
                                          color: AppColors.white,
                                          shadows: const [shadows.bs_primary],
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
                                        onPressed: () {},
                                        child: const Icon(
                                          Icons.pause,
                                          size: 36,
                                        )),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const PlansRoutineCoinEarningScreen()));
                                      },
                                      child: Container(
                                        width: screenWidth * 0.28,
                                        padding: edge_insets_x_12_y_6,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          boxShadow: [shadows.bs_primary]
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            const Icon(
                                              Icons.skip_next_outlined,
                                              size: 24,
                                              color: AppColors.bgPrimary,
                                            ),
                                            Container(
                                              padding: edge_insets_l_4,
                                              child: const Text(
                                                'Skip',
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
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: edge_insets_13,
                          decoration: const BoxDecoration(color: AppColors.grey4),
                          child: const Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Already finished this step?',
                                  style: TextStyle(
                                    color: Color(0xFF787878),
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
                                  text: 'go to next step',
                                  style: TextStyle(
                                    color: Color(0xFF6D3E75),
                                    fontSize: Fonts.fontSize18,
                                    fontFamily: Fonts.fontNunito,
                                    fontWeight: Fonts.f700,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  PlansRoutineDoingScreenCubit createCubitAndAssignToController(BuildContext context) {
    PlansRoutineDoingScreenCubit plansRoutineDoingScreenCubit =
        PlansRoutineDoingScreenCubit();
    controller?.cubit = plansRoutineDoingScreenCubit;
    return plansRoutineDoingScreenCubit;
  }

}
