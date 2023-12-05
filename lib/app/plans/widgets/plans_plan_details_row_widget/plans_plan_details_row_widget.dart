import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/plans/widgets/plans_plan_details_row_widget/plans_plan_details_row_widget_controller.dart';
import 'package:beebloom_water_tracker/app/plans/widgets/plans_plan_details_row_widget/plans_plan_details_row_widget_cubit.dart';
import 'package:beebloom_water_tracker/app/styles/borders.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../themes/app_colors.dart';
import '../../../styles/edge_insets.dart';

class PlansPlanDetailsRowWidget extends BaseStatelessWidget<
    PlansPlanDetailsRowWidgetController, PlansPlanDetailsRowWidgetCubit> {
  const PlansPlanDetailsRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlansPlanDetailsRowWidgetCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<PlansPlanDetailsRowWidgetCubit,
          PlansPlanDetailsRowWidgetState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 32, bottom: 32, left: 24, right: 24),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Shoulder sessions at home',
                          style: TextStyle(
                            fontSize: Fonts.fontSize18,
                            fontFamily: Fonts.fontNunito,
                            fontWeight: Fonts.f700,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'see all',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: AppColors.bgPrimary,
                            fontSize: Fonts.fontSize18,
                            fontFamily: Fonts.fontNunito,
                            fontWeight: Fonts.f700,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: edge_insets_x_16,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LegExercise(),
                    LegExercise(),
                  ],
                ),
              ),
              Container(
                padding: edge_insets_x_16,
                margin: edge_insets_t_20,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LegExercise(),
                    LegExercise(),
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
  PlansPlanDetailsRowWidgetCubit createCubitAndAssignToController(
      BuildContext context) {
    PlansPlanDetailsRowWidgetCubit plansPlanDetailsRowWidgetCubit =
        PlansPlanDetailsRowWidgetCubit();
    controller?.cubit = plansPlanDetailsRowWidgetCubit;
    return plansPlanDetailsRowWidgetCubit;
  }
}

class LegExercise extends StatelessWidget {
  const LegExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 264,
        // margin: EdgeInsets.only(right: 24),
        decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage("images/leg_work_excersice.png"),
              fit: BoxFit.cover,
            ),
            border: borders.b_3px_bgPrimary),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 156,
              decoration: const BoxDecoration(
                  color: Colors.white, borderRadius: radius.br_t_10),
              // margin: EdgeInsets.only(top: 138),
              padding: edge_insets_y_8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Lorem ipsum dolor \n siter amet consectetur \n Viverra ultrices.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.textNormal,
                          fontSize: Fonts.fontSize14,
                          fontFamily: Fonts.fontNunito,
                          fontWeight: Fonts.f400,
                        ),
                      ),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.star,
                            size: 15,
                            color: AppColors.coinProgress,
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: AppColors.coinProgress,
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: AppColors.coinProgress,
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: AppColors.grey4,
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: AppColors.grey4,
                          ),
                          Text(
                            '(300+)',
                            style: TextStyle(
                              color: Color(0xFF676767),
                              fontSize: 10,
                              fontFamily: Fonts.fontLato,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            '₹ 20',
                            style: TextStyle(
                              color: Color(0xFF2D2D2D),
                              fontSize: Fonts.fontSize18,
                              fontFamily: Fonts.fontNunito,
                              fontWeight: Fonts.f700,
                            ),
                          ),
                          Text(
                            '150',
                            style: TextStyle(
                              color: AppColors.grey4,
                              fontSize: Fonts.fontSize14,
                              fontFamily: Fonts.fontLato,
                              fontWeight: Fonts.f500,
                              decoration: TextDecoration.lineThrough,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            'Or pay using',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.green,
                              fontSize: Fonts.fontSize14,
                              fontFamily: Fonts.fontNunito,
                              fontWeight: Fonts.f400,
                            ),
                          ),
                          Image.asset(
                            'images/coin.png',
                            width: 17,
                          ),
                          const Text(
                            '199',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF0EB700),
                              fontSize: Fonts.fontSize14,
                              fontFamily: Fonts.fontNunito,
                              fontWeight: Fonts.f400,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
