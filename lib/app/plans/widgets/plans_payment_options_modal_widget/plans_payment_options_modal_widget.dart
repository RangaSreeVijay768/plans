import 'dart:ui';

import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/plans/widgets/plans_payment_options_modal_widget/plans_payment_options_modal_content_widget/plans_payment_options_modal_content_widget.dart';
import 'package:beebloom_water_tracker/app/plans/widgets/plans_payment_options_modal_widget/plans_payment_options_modal_widget_controller.dart';
import 'package:beebloom_water_tracker/app/plans/widgets/plans_payment_options_modal_widget/plans_payment_options_modal_widget_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../styles/edge_insets.dart';
import '../../../styles/borders.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';
import '../plans_payment_conformation_modal_widget/plans_payment_conformation_modal_widget.dart';

class PlansPaymentOptionsModalWidget extends BaseStatelessWidget<
    PlansPaymentOptionsModalWidgetController,
    PlansPaymentOptionsModalWidgetCubit> {
  const PlansPaymentOptionsModalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlansPaymentOptionsModalWidgetCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<PlansPaymentOptionsModalWidgetCubit,
          PlansPaymentOptionsModalWidgetState>(
        listener: (context, state) {},
        builder: (context, state) {
          return ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return const PlansPaymentOptionsModalContentWidget();
                },
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.bgPrimary,
             padding: edge_insets_x_49_y_12
            ),
            child: const Text(
              'Buy now',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.white,
                fontSize: Fonts.fontSize18,
                fontFamily: Fonts.fontNunito,
                fontWeight: Fonts.f700,
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  PlansPaymentOptionsModalWidgetCubit createCubitAndAssignToController(
      BuildContext context) {
    PlansPaymentOptionsModalWidgetCubit plansPaymentOptionsModalWidgetCubit =
        PlansPaymentOptionsModalWidgetCubit();
    controller?.cubit = plansPaymentOptionsModalWidgetCubit;
    return plansPaymentOptionsModalWidgetCubit;
  }
}
