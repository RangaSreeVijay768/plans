import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/plans/widgets/plans_switch_widget/plans_switch_widget_controller.dart';
import 'package:beebloom_water_tracker/app/plans/widgets/plans_switch_widget/plans_switch_widget_cubit.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchScreen extends BaseStatelessWidget<PlansSwitchWidgetController, PlansSwitchWidgetCubit>{
  const SwitchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlansSwitchWidgetCubit>(
        create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<PlansSwitchWidgetCubit, PlansSwitchWidgetState>(
        listener: (context, state){},
        builder: (context, state){
          return Switch(
              value: state.value,
              onChanged: (value){
                getCubit(context).UpdateState(value);
              },
            activeColor: AppColors.white,
            activeTrackColor: AppColors.green,
            inactiveThumbColor: AppColors.grey2,
            inactiveTrackColor: AppColors.grey4,
          );
        },
      )
    );
  }

  @override
  PlansSwitchWidgetCubit createCubitAndAssignToController(BuildContext context) {
    PlansSwitchWidgetCubit plansSwitchWidgetCubit =
        PlansSwitchWidgetCubit();
    controller?.cubit = plansSwitchWidgetCubit;
    return plansSwitchWidgetCubit;
  }

}