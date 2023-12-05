import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/plans/widgets/plans_plan_subscription_details_next_widget/plans_plan_subscription_details_next_widget_controller.dart';
import 'package:beebloom_water_tracker/app/plans/widgets/plans_plan_subscription_details_next_widget/plans_plan_subscription_details_next_widget_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../styles/edge_insets.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';
import '../../screens/plans_plan_details_screen/plans_plan_details_screen.dart';

class PlansPlanSubscriptionDetailsNextWidget extends BaseStatelessWidget<PlansPlanSubscriptionDetailsNextWidgetController, PlansPlanSubscriptionDetailsNextWidgetCubit>{
  const PlansPlanSubscriptionDetailsNextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlansPlanSubscriptionDetailsNextWidgetCubit>(
        create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<PlansPlanSubscriptionDetailsNextWidgetCubit, PlansPlanSubscriptionDetailsNextWidgetState>(
        listener: (context, state){},
        builder: (context, state){
          return Container(
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x26000000),
                  blurRadius: 12,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Column(
              children: [
                Container(
                  padding: edge_insets_x_10,
                  margin: edge_insets_t_10,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('images/my_plans_skin_img.png',
                              height: 93, width: 93),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Dry skin care routine Dry\nskin care routine',
                            style: TextStyle(
                              fontSize: Fonts.fontSize18,
                              fontFamily: Fonts.fontNunito,
                              fontWeight: Fonts.f400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: edge_insets_10,
                  decoration: const BoxDecoration(
                    color: AppColors.grey3,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Next activity',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: AppColors.textGrey,
                              fontSize: Fonts.fontSize12,
                              fontFamily: Fonts.fontNunito,
                              fontWeight: Fonts.f400,
                            ),
                          ),
                          Text(
                            'Morning routine',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: Fonts.fontSize18,
                              fontFamily: Fonts.fontNunito,
                              fontWeight: Fonts.f400,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => PlansPlanDetailsScreen()));
                                    },
                                    child: const Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Start your plan',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: AppColors.bgPrimary,
                                            fontSize: Fonts.fontSize18,
                                            fontFamily: Fonts.fontNunito,
                                            fontWeight: Fonts.f700,
                                          ),
                                        ),
                                        Icon(Icons.chevron_right, size: 22),
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          );

        },
      ),
    );
  }

  @override
  PlansPlanSubscriptionDetailsNextWidgetCubit createCubitAndAssignToController(BuildContext context) {
    PlansPlanSubscriptionDetailsNextWidgetCubit plansPlanSubscriptionDetailsNextWidgetCubit =
        PlansPlanSubscriptionDetailsNextWidgetCubit();
    controller?.cubit = plansPlanSubscriptionDetailsNextWidgetCubit;
    return plansPlanSubscriptionDetailsNextWidgetCubit;
  }

}