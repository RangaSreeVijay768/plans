import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/plans/widgets/plans_payment_conformation_modal_widget/plans_payment_conformation_modal_content_widget/plans_payment_conformation_modal_content_widget_controller.dart';
import 'package:beebloom_water_tracker/app/plans/widgets/plans_payment_conformation_modal_widget/plans_payment_conformation_modal_content_widget/plans_payment_conformation_modal_content_widget_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../styles/edge_insets.dart';
import '../../../../styles/borders.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/fonts.dart';
import '../../../screens/plans_payment_successful_screen/plans_payment_successful_screen.dart';
import '../../plans_purchase_plan_card_widget/plans_purchase_plan_card_widget.dart';

class PlansPaymentConformationModalContentWidget extends BaseStatelessWidget<PlansPaymentConformationModalContentWidgetController, PlansPaymentConformationModalContentWidgetCubit>{
  const PlansPaymentConformationModalContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlansPaymentConformationModalContentWidgetCubit>(
        create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<PlansPaymentConformationModalContentWidgetCubit, PlansPaymentConformationModalContentWidgetState>(
        listener: (context, state){},
        builder: (context, state){
          double screenHeight = MediaQuery.of(context).size.height;

          double screenWidth = MediaQuery.of(context).size.width;

          return Wrap(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SingleChildScrollView(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: AppColors.white,
                        borderRadius: radius.br_t_20,
                      ),
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(
                            padding: edge_insets_x_24_y_16,
                            decoration: BoxDecoration(
                              border: borders.bb_1px_grey2,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: const Text(
                                    'Payment conformation',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: AppColors.textHeading,
                                      fontSize: Fonts.fontSize24,
                                      fontFamily: Fonts.fontNunito,
                                      fontWeight: Fonts.f700,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    child: const Icon(Icons.close,
                                        color: AppColors.textNormal),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: edge_insets_x_24,
                            child: const PlansPurchasePlanCardWidget(
                              shadow: false,
                            ),
                          ),
                          Container(
                            margin: edge_insets_y_40,
                            padding: edge_insets_x_24,
                            child: Row(
                              children: [
                                Checkbox(
                                  value: false,
                                  onChanged: (bool? value) {
                                    value = false;
                                  },
                                ),
                                Container(
                                  child: const Text(
                                    'Confirm to use',
                                    style: TextStyle(
                                      color: AppColors.textGrey,
                                      fontSize: Fonts.fontSize18,
                                      fontFamily: Fonts.fontNunito,
                                      fontWeight: Fonts.f400,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: edge_insets_l_4,
                                  child: Image.asset(
                                    'images/coin.png',
                                    width: 17,
                                    height: 17,
                                  ),
                                ),
                                Container(
                                  child: const Text(
                                    '199',
                                    style: TextStyle(
                                      color: AppColors.textGrey,
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
                    ),
                  ),
                  Container(
                    color: AppColors.white,
                    width: screenWidth,
                    padding: edge_insets_16,
                    child: FractionallySizedBox(
                      widthFactor: 0.75,
                      child: Container(
                        padding: edge_insets_y_8,
                        decoration: BoxDecoration(
                            color: AppColors.bgPrimary, borderRadius: radius.br_30),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const PlansPaymentSuccessfulScreen()));

                          },
                          child: const Text(
                            'Pay now',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: Fonts.fontSize18,
                              fontFamily: Fonts.fontNunito,
                              fontWeight: Fonts.f700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  PlansPaymentConformationModalContentWidgetCubit createCubitAndAssignToController(BuildContext context) {
    PlansPaymentConformationModalContentWidgetCubit plansPaymentConformationModalContentWidgetCubit =
        PlansPaymentConformationModalContentWidgetCubit();
    controller?.cubit = plansPaymentConformationModalContentWidgetCubit;
    return plansPaymentConformationModalContentWidgetCubit;
  }

}