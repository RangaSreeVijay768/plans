import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/plans/widgets/plans_purchase_plan_card_widget/plans_purchase_plan_card_widget_controller.dart';
import 'package:beebloom_water_tracker/app/plans/widgets/plans_purchase_plan_card_widget/plans_purchase_plan_card_widget_cubit.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../styles/borders.dart';
import '../../../themes/app_colors.dart';
import '../../../styles/edge_insets.dart';
import '../../screens/plans_plan_home_present_screen/plans_plan_home_present_screen.dart';

class PlansPurchasePlanCardWidget extends BaseStatelessWidget<PlansPurchasePlanCardWidgetController, PlansPurchasePlanCardWidgetCubit>{
  const PlansPurchasePlanCardWidget({super.key, this.shadow = true});
  final bool shadow;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlansPurchasePlanCardWidgetCubit>(
        create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<PlansPurchasePlanCardWidgetCubit, PlansPurchasePlanCardWidgetState>(
        listener: (context, state){},
        builder: (context, state){
          return Container(
            width: double.infinity,
            margin: edge_insets_t_24,
            decoration: shadow?  ShapeDecoration(
              // borderRadius: BR_10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x26000000),
                    blurRadius: 12,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  ),
                ]) :
            BoxDecoration(
                border: borders.b_1px_grey2,
                borderRadius: radius.br_10
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: edge_insets_16,
                  decoration: const BoxDecoration(
                    borderRadius: radius.br_t_10,
                    color: AppColors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: edge_insets_r_16,
                            child: Image.asset(
                              'images/all_plans_card_image.png',
                              width: 93,
                              height: 93,
                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: const Text(
                                    'Dry skin care routine \nDry skincare routine',
                                    maxLines: 2,
                                    overflow: TextOverflow.fade,
                                    style: TextStyle(
                                      color: AppColors.textHeading,
                                      fontSize: Fonts.fontSize18,
                                      fontFamily: Fonts.fontNunito,
                                      fontWeight: Fonts.f400,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: const Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: AppColors.coinProgress,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: AppColors.coinProgress,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: AppColors.coinProgress,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: AppColors.coinProgress,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: AppColors.coinProgress,
                                      ),
                                      Text(
                                        '4.8',
                                        style: TextStyle(
                                          color: AppColors.bgPrimary,
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
                        ],
                      ),
                      Container(
                        // decoration: BoxDecoration(
                        //   border: B_1_BLACK,
                        // ),
                        margin: edge_insets_t_16,
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          padding: edge_insets_4,
                                          decoration: BoxDecoration(
                                            color:
                                            AppColors.grey3,
                                            borderRadius: radius.br_20,
                                          ),
                                          child: Image.asset(
                                            'images/calendar-clear-outline.png',
                                            width: 20,
                                            height: 20,
                                          )),
                                      Container(
                                        margin: edge_insets_l_8,
                                        child: const Text(
                                          '21-days ',
                                          style: TextStyle(
                                            color: AppColors.textGrey,
                                            fontSize: Fonts.fontSize14,
                                            fontFamily: Fonts.fontNunito,
                                            fontWeight: Fonts.f400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: edge_insets_4,
                                        decoration: BoxDecoration(
                                          color:
                                          AppColors.grey3,
                                          borderRadius: radius.br_20,
                                        ),
                                        child: Image.asset(
                                          'images/git-compare-outline.png',
                                          width: 20,
                                          height: 20,
                                        ),
                                      ),
                                      Container(
                                        margin: edge_insets_l_8,
                                        child: const Text(
                                          '2 routines',
                                          style: TextStyle(
                                            color: AppColors.textGrey,
                                            fontSize: Fonts.fontSize14,
                                            fontFamily: Fonts.fontNunito,
                                            fontWeight: Fonts.f400,
                                          ),
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
                      Container(
                        // decoration: BoxDecoration(
                        //   border: B_1_BLACK,
                        // ),
                        margin: edge_insets_t_16,
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          padding: edge_insets_4,
                                          decoration: BoxDecoration(
                                            color:
                                            AppColors.grey3,
                                            borderRadius: radius.br_20,
                                          ),
                                          child: Image.asset(
                                            'images/timer-outline.png',
                                            width: 20,
                                            height: 20,
                                          )),
                                      Container(
                                        margin: edge_insets_l_8,
                                        child: const Text(
                                          '45 minutes',
                                          style: TextStyle(
                                            color: AppColors.textGrey,
                                            fontSize: Fonts.fontSize14,
                                            fontFamily: Fonts.fontNunito,
                                            fontWeight: Fonts.f400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: edge_insets_4,
                                        decoration: BoxDecoration(
                                          color:
                                          AppColors.grey3,
                                          borderRadius: radius.br_20,
                                        ),
                                        child: Image.asset(
                                          'images/home_outline.png',
                                          width: 20,
                                          height: 20,
                                        ),
                                      ),
                                      Container(
                                        margin: edge_insets_l_8,
                                        child: const Text(
                                          'At home routines',
                                          style: TextStyle(
                                            color: AppColors.textGrey,
                                            fontSize: Fonts.fontSize14,
                                            fontFamily: Fonts.fontNunito,
                                            fontWeight: Fonts.f400,
                                          ),
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
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: edge_insets_16,
                  decoration: const BoxDecoration(
                    color: AppColors.grey3,
                    borderRadius: radius.br_b_10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '₹ 20 ',
                                  style: TextStyle(
                                    color: AppColors.textHeading,
                                    fontSize: Fonts.fontSize18,
                                    fontFamily: Fonts.fontNunito,
                                    fontWeight: Fonts.f700,
                                  ),
                                ),
                                TextSpan(
                                  text: '150',
                                  style: TextStyle(
                                    color: AppColors.grey4,
                                    fontSize: Fonts.fontSize12,
                                    fontFamily: Fonts.fontNunito,
                                    fontWeight: Fonts.f400,
                                    decoration:
                                    TextDecoration.lineThrough,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              const Text(
                                'Or pay using',
                                style: TextStyle(
                                  color: AppColors.green,
                                  fontSize: Fonts.fontSize14,
                                  fontFamily: Fonts.fontNunito,
                                  fontWeight: Fonts.f400,
                                ),
                              ),
                              Container(
                                margin: edge_insets_x_4,
                                child: Image.asset(
                                  'images/coin.png',
                                  width: 17,
                                ),
                              ),
                              const Text(
                                '199 ',
                                style: TextStyle(
                                  color: AppColors.green,
                                  fontSize: Fonts.fontSize14,
                                  fontFamily: Fonts.fontNunito,
                                  fontWeight: Fonts.f400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PlansPlanHomePresentScreen()));
                            },
                            child: const Row(
                              children: [
                                Text(
                                  'Know more',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: AppColors.bgPrimary,
                                    fontSize: Fonts.fontSize18,
                                    fontFamily: Fonts.fontNunito,
                                    fontWeight: Fonts.f700,
                                  ),
                                ),
                                Icon(
                                  Icons.chevron_right_outlined,
                                  size: 32,
                                  color: AppColors.bgPrimary,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          );

        },
      ),
    );
  }

  @override
  PlansPurchasePlanCardWidgetCubit createCubitAndAssignToController(BuildContext context) {
    PlansPurchasePlanCardWidgetCubit plansPurchasePlanCardWidgetCubit =
        PlansPurchasePlanCardWidgetCubit();
    controller?.cubit = plansPurchasePlanCardWidgetCubit;
    return plansPurchasePlanCardWidgetCubit;
  }

}
