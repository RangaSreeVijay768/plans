import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/plans/widgets/plans_plan_subscription_details_expired_widget/plans_plan_subscription_details_expired_widget_controller.dart';
import 'package:beebloom_water_tracker/app/plans/widgets/plans_plan_subscription_details_expired_widget/plans_plan_subscription_details_expired_widget_cubit.dart';
import 'package:beebloom_water_tracker/app/styles/borders.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../styles/edge_insets.dart';
import '../../../themes/fonts.dart';

class PlansPlanSubscriptionDetailsExpiredWidget extends BaseStatelessWidget<PlansPlanSubscriptionDetailsExpiredWidgetController, PlansPlanSubscriptionDetailsExpiredWidgetCubit>{
  const PlansPlanSubscriptionDetailsExpiredWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlansPlanSubscriptionDetailsExpiredWidgetCubit>(
        create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<PlansPlanSubscriptionDetailsExpiredWidgetCubit, PlansPlanSubscriptionDetailsExpiredWidgetState>(
        listener: (context, state){},
        builder: (context, state){
          return Container(
            decoration: ShapeDecoration(
              color: AppColors.white,
              shape: RoundedRectangleBorder(
                borderRadius: radius.br_10,
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
                      Row(
                        children: [
                          Image.asset(
                            'images/coin.png',
                            height: 17,
                            width: 17,
                          ),
                          const Text(
                            '50 ',
                            style: TextStyle(
                              fontSize: Fonts.fontSize14,
                              fontFamily: Fonts.fontNunito,
                              fontWeight: Fonts.f700,
                            ),
                          ),
                          const Text(
                            'coins earned',
                            style: TextStyle(
                              color: AppColors.textGrey,
                              fontSize: Fonts.fontSize14,
                              fontFamily: Fonts.fontNunito,
                              fontWeight: Fonts.f400,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Row(
                        children: [
                          Text(
                            '15',
                            style: TextStyle(
                              fontSize: Fonts.fontSize14,
                              fontFamily: 'Nunito',
                              fontWeight: Fonts.f700,
                            ),
                          ),
                          Text(
                            '/ 21 days completed',
                            style: TextStyle(
                              color: AppColors.textGrey,
                              fontSize: Fonts.fontSize12,
                              fontFamily: Fonts.fontNunito,
                              fontWeight: Fonts.f400,
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: edge_insets_t_16,
                        child: const Row(
                          children: [
                            Text(
                              'Plan expired on',
                              style: TextStyle(
                                color: AppColors.textGrey,
                                fontSize: Fonts.fontSize14,
                                fontFamily: Fonts.fontNunito,
                                fontWeight: Fonts.f400,
                              ),
                            ),
                            Text(
                              ' 12.07.22',
                              style: TextStyle(
                                fontSize: Fonts.fontSize12,
                                fontFamily: Fonts.fontNunito,
                                fontWeight: Fonts.f700,
                              ),
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: edge_insets_t_24,
                  padding: edge_insets_10,
                  decoration: BoxDecoration(
                      border: borders.bt_1px_grey2
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Container(
                            padding: edge_insets_x_24,
                            child: const Text(
                              'Give feedback',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: AppColors.bgPrimary,
                                fontSize: Fonts.fontSize14,
                                fontFamily: Fonts.fontNunito,
                                fontWeight: Fonts.f700,
                              ),
                            ),
                          )),

                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF6D3E75), // Background color
                        ),
                        child: const Text(
                          'Buy it again',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: Fonts.fontSize18,
                            fontFamily: Fonts.fontNunito,
                            fontWeight: Fonts.f700,
                          ),
                        ),
                      ),
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
  PlansPlanSubscriptionDetailsExpiredWidgetCubit createCubitAndAssignToController(BuildContext context) {
    PlansPlanSubscriptionDetailsExpiredWidgetCubit plansPlanSubscriptionDetailsExpiredWidgetCubit =
        PlansPlanSubscriptionDetailsExpiredWidgetCubit();
    controller?.cubit = plansPlanSubscriptionDetailsExpiredWidgetCubit;
    return plansPlanSubscriptionDetailsExpiredWidgetCubit;
  }

}