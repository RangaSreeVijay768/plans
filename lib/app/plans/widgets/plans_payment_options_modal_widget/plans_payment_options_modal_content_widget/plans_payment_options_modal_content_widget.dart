import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/plans/widgets/plans_payment_options_modal_widget/plans_payment_options_modal_content_widget/plans_payment_options_modal_content_widget_controller.dart';
import 'package:beebloom_water_tracker/app/plans/widgets/plans_payment_options_modal_widget/plans_payment_options_modal_content_widget/plans_payment_options_modal_content_widget_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../styles/edge_insets.dart';
import '../../../../styles/borders.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/fonts.dart';
import '../../plans_payment_conformation_modal_widget/plans_payment_conformation_modal_widget.dart';

class PlansPaymentOptionsModalContentWidget extends BaseStatelessWidget<PlansPaymentOptionsModalContentWidgetController, PlansPaymentOptionsModalContentWidgetCubit>{
  const PlansPaymentOptionsModalContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlansPaymentOptionsModalContentWidgetCubit>(
        create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<PlansPaymentOptionsModalContentWidgetCubit, PlansPaymentOptionsModalContentWidgetState>(
        listener: (context, state){},
        builder: (context, state){
          return Container(
            height: 316,
            child: Column(
              children: [
                Container(
                  decoration:
                  BoxDecoration(border: borders.bb_1px_grey4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: edge_insets_y_24,
                        margin: edge_insets_x_24,
                        child: const Text(
                          'Payment options',
                          style: TextStyle(
                            fontSize: Fonts.fontSize24,
                            fontFamily: Fonts.fontNunito,
                            fontWeight: Fonts.f700,
                          ),
                        ),
                      ),
                      Container(
                          padding: edge_insets_r_24,
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.close),
                          )),
                    ],
                  ),
                ),
                Container(
                  padding: edge_insets_24,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          // margin: EdgeInsets.only(left: 24, top: 30),
                          padding: edge_insets_10,
                          decoration: BoxDecoration(
                              border: borders.b_0_5px_bgPrimary,
                              borderRadius: radius.br_5
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'images/pay_using_money.png',
                                height: 34,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                'Pay',
                                style: TextStyle(
                                  color: AppColors.bgPrimary,
                                  fontSize: Fonts.fontSize18,
                                  fontFamily: Fonts.fontNunito,
                                  fontWeight: Fonts.f400,
                                ),
                              ),
                              const Text(
                                ' Rs.10',
                                style: TextStyle(
                                  color: AppColors.bgPrimary,
                                  fontSize: Fonts.fontSize18,
                                  fontFamily: Fonts.fontNunito,
                                  fontWeight: Fonts.f700,
                                ),
                              ),
                              const Text(
                                ' to subscribe',
                                style: TextStyle(
                                  color: AppColors.bgPrimary,
                                  fontSize: Fonts.fontSize18,
                                  fontFamily: Fonts.fontNunito,
                                  fontWeight: Fonts.f400,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 24,),
                      const Icon(Icons.info_outline, color: AppColors.bgPrimary,),
                    ],
                  ),
                ),
                Container(
                  padding: edge_insets_24,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              builder: (BuildContext context) {
                                return PlansPaymentConformationModalWidget();
                              },
                            );
                          },
                          child: Container(
                            padding: edge_insets_10,
                            decoration: BoxDecoration(
                                border: borders.b_0_5px_bgPrimary,
                                borderRadius: radius.br_5
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  'images/pay_using_coins.png',
                                  height: 34,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Text(
                                  'Pay ',
                                  style: TextStyle(
                                    color: AppColors.bgPrimary,
                                    fontSize: Fonts.fontSize18,
                                    fontFamily: Fonts.fontNunito,
                                    fontWeight: Fonts.f400,
                                  ),
                                ),
                                Image.asset(
                                  'images/coin.png',
                                  height: 17,
                                ),
                                const Text(
                                  ' 4500',
                                  style: TextStyle(
                                    color: AppColors.bgPrimary,
                                    fontSize: Fonts.fontSize18,
                                    fontFamily: Fonts.fontNunito,
                                    fontWeight: Fonts.f700,
                                  ),
                                ),
                                const Text(
                                  ' to subscribe',
                                  style: TextStyle(
                                    color: AppColors.bgPrimary,
                                    fontSize: Fonts.fontSize18,
                                    fontFamily: Fonts.fontNunito,
                                    fontWeight: Fonts.f400,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 24,),
                      Icon(
                        Icons.info_outline,
                        color: AppColors.bgPrimary,
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
  PlansPaymentOptionsModalContentWidgetCubit createCubitAndAssignToController(BuildContext context) {
    PlansPaymentOptionsModalContentWidgetCubit plansPaymentOptionsModalContentWidgetCubit =
        PlansPaymentOptionsModalContentWidgetCubit();
    controller?.cubit = plansPaymentOptionsModalContentWidgetCubit;
    return plansPaymentOptionsModalContentWidgetCubit;
  }

}