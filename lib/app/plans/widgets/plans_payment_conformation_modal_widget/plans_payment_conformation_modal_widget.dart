import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans_payment_successful_screen/plans_payment_successful_screen.dart';
import 'package:beebloom_water_tracker/app/plans/widgets/plans_payment_conformation_modal_widget/plans_payment_conformation_modal_content_widget/plans_payment_conformation_modal_content_widget.dart';
import 'package:beebloom_water_tracker/app/plans/widgets/plans_payment_conformation_modal_widget/plans_payment_conformation_modal_widget_controller.dart';
import 'package:beebloom_water_tracker/app/plans/widgets/plans_payment_conformation_modal_widget/plans_payment_conformation_modal_widget_cubit.dart';
import 'package:beebloom_water_tracker/app/plans/widgets/plans_purchase_plan_card_widget/plans_purchase_plan_card_widget.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../styles/borders.dart';
import '../../../themes/app_colors.dart';
import '../../../styles/edge_insets.dart';

class PlansPaymentConformationModalWidget extends BaseStatelessWidget<PlansPaymentConformationModalWidgetController, PlansPaymentConformationModalWidgetCubit>{
  const PlansPaymentConformationModalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlansPaymentConformationModalWidgetCubit>(
        create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<PlansPaymentConformationModalWidgetCubit, PlansPaymentConformationModalWidgetState>(
        listener: (context, state){},
        builder: (context, state){

          return const PlansPaymentConformationModalContentWidget();
        },
      ),
    );
  }

  @override
  PlansPaymentConformationModalWidgetCubit createCubitAndAssignToController(BuildContext context) {
    PlansPaymentConformationModalWidgetCubit plansPaymentConformationModalWidgetCubit =
        PlansPaymentConformationModalWidgetCubit();
    controller?.cubit = plansPaymentConformationModalWidgetCubit;
    return plansPaymentConformationModalWidgetCubit;
  }

}
