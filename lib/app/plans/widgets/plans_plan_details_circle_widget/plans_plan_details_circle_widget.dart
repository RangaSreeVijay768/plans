import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/plans/widgets/plans_plan_details_circle_widget/plans_plan_details_circle_widget_controller.dart';
import 'package:beebloom_water_tracker/app/plans/widgets/plans_plan_details_circle_widget/plans_plan_details_circle_widget_cubit.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlansPlanDetailsCircleWidget extends BaseStatelessWidget<PlansPlanDetailsCircleWidgetController, PlansPlanDetailsCircleWidgetCubit>{
  const PlansPlanDetailsCircleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlansPlanDetailsCircleWidgetCubit>(
        create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<PlansPlanDetailsCircleWidgetCubit, PlansPlanDetailsCircleWidgetState>(
        listener: (context, state){},
        builder: (context, state){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 40, left: 24),
                child: const Text(
                  'Pick one category',
                  style: TextStyle(
                    color: AppColors.textHeading,
                    fontSize: Fonts.fontSize18,
                    fontFamily: Fonts.fontNunito,
                    fontWeight: Fonts.f700,
                  ),
                ),
              ),
              Container(
                padding: edge_insets_l_10,
                margin: edge_insets_t_24,
                height: 150,
                child: ListView(

                  scrollDirection: Axis.horizontal,
                  children: const [

                    Category(),
                    Category(),
                    Category(),
                    Category(),
                    Category(),
                    Category(),

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
  PlansPlanDetailsCircleWidgetCubit createCubitAndAssignToController(BuildContext context) {
    PlansPlanDetailsCircleWidgetCubit plansPlanDetailsCircleWidgetCubit =
        PlansPlanDetailsCircleWidgetCubit();
    controller?.cubit = plansPlanDetailsCircleWidgetCubit;
    return plansPlanDetailsCircleWidgetCubit;
  }

}


class Category extends StatelessWidget{
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'images/skin_care.png',
          width: 100,
          height: 100,
        ),
        const Text(
          'Skin Care',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.textHeading,
            fontSize: Fonts.fontSize14,
            fontFamily: Fonts.fontNunito,
            fontWeight: Fonts.f400,
          ),
        ),
      ],
    );
  }

}