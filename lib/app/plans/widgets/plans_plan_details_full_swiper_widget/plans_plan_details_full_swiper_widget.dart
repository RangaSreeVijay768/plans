import 'package:beebloom_water_tracker/app/plans/widgets/plans_plan_details_full_swiper_widget/plans_plan_details_full_swiper_widget_controller.dart';
import 'package:beebloom_water_tracker/app/plans/widgets/plans_plan_details_full_swiper_widget/plans_plan_details_full_swiper_widget_cubit.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widgets/base_stateless_widget.dart';
import '../../screens/plans_all_plans_screen/plans_all_plans_screen.dart';

class PlansPlanDetailsFullSwiperWidget extends BaseStatelessWidget<PlansPlanDetailsFullSwiperWidgetController, PlansPlanDetailsFullSwiperWidgetCubit>{
  const PlansPlanDetailsFullSwiperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlansPlanDetailsFullSwiperWidgetCubit>(
        create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<PlansPlanDetailsFullSwiperWidgetCubit, PlansPlanDetailsFullSwiperWidgetState>(
        listener: (context, state){},
        builder: (context, state){
          return Column(
            children: [
              Container(
                padding: edge_insets_x_24_y_32,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      children: [
                        Text(
                          'The perfect leg workout',
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
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (
                                    context) => const PlansAllPlansScreen()));
                          },
                          child:
                          const Text(
                            'see all',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: AppColors.bgPrimary,
                              fontSize: Fonts.fontSize18,
                              fontFamily: Fonts.fontNunito,
                              fontWeight: Fonts.f700,
                            ),
                          ),

                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 183, right: 24),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("images/leg_work_excersice.png"),
                    fit: BoxFit.cover,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment(0.00, -1.00),
                    end: Alignment(0, 1),
                    colors: [Colors.black.withOpacity(0), Colors.black],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 24, top: 28),
                          child: const Text(
                            'Upper leg hamstrings and \n quadriceps workout plan',
                            style: TextStyle(
                              color: AppColors.grey2,
                              fontSize: Fonts.fontSize18,
                              fontFamily: Fonts.fontNunito,
                              fontWeight: Fonts.f400,
                            ),
                          ),
                        ),
                        Container(
                          padding:
                          EdgeInsets.only(left: 24, top: 16, bottom: 24),
                          child: const Row(
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
                                color: AppColors.coinProgress,
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: AppColors.coinProgress,
                              ),
                              Text(
                                '4.8',
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: Fonts.fontSize12,
                                  fontFamily: Fonts.fontNunito,
                                  fontWeight: Fonts.f700,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          child: const Row(
                            children: [
                              Text(
                                '₹ 20',
                                style: TextStyle(
                                  color: AppColors.white,
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
                                  fontFamily: Fonts.fontNunito,
                                  fontWeight: Fonts.f400,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: const Row(
                            children: [
                              Text(
                                'Or pay using',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: AppColors.green,
                                  fontSize: Fonts.fontSize14,
                                  fontFamily: Fonts.fontNunito,
                                  fontWeight: Fonts.f400,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
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
  PlansPlanDetailsFullSwiperWidgetCubit createCubitAndAssignToController(BuildContext context) {
    PlansPlanDetailsFullSwiperWidgetCubit plansPlanDetailsFullSwiperWidgetCubit =
        PlansPlanDetailsFullSwiperWidgetCubit();
    controller?.cubit = plansPlanDetailsFullSwiperWidgetCubit;
    return plansPlanDetailsFullSwiperWidgetCubit;
  }

}