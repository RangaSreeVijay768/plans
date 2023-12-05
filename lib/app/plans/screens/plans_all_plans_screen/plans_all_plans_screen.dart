import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans_all_plans_screen/plans_all_plans_screen_controller.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans_all_plans_screen/plans_all_plans_screen_cubit.dart';
import 'package:beebloom_water_tracker/app/styles/borders.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/plans/widgets/plans_purchase_plan_card_widget/plans_purchase_plan_card_widget.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlansAllPlansScreen extends BaseStatelessWidget<PlansAllPlansScreenController, PlansAllPlansScreenCubit>{
  const PlansAllPlansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlansAllPlansScreenCubit>(
        create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<PlansAllPlansScreenCubit, PlansAllPlansScreenState>(
        listener: (context, state){},
        builder: (context, state){
          return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: [
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(0.800000011920929)
                        ],
                      ),
                    ),
                    child: Stack(
                      children: [
                        Image.asset(
                          'images/all_plans_top_image.png',
                        ),
                        Positioned(
                          //<-- SEE HERE
                          bottom: 0,
                          child: Container(
                            margin: const EdgeInsets.only(left: 24, bottom: 42),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: const Text(
                                    'All plans',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: Fonts.fontSize24,
                                      fontFamily: Fonts.fontNunito,
                                      fontWeight: Fonts.f700,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: const Text(
                                    'Subheading will come here',
                                    style: TextStyle(
                                      color: AppColors.grey2,
                                      fontSize: Fonts.fontSize14,
                                      fontFamily: Fonts.fontNunito,
                                      fontWeight: Fonts.f400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: edge_insets_x_24_y_16,
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                      borderRadius: radius.br_t_20,
                    ),
                    transform: Matrix4.translationValues(0.0, -20.0, 0.0),
                    child: const Column(
                      children: [
                        //All Plans Card
                        PlansPurchasePlanCardWidget(),
                        PlansPurchasePlanCardWidget(),
                        PlansPurchasePlanCardWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  PlansAllPlansScreenCubit createCubitAndAssignToController(BuildContext context) {
    PlansAllPlansScreenCubit plansAllPlansScreenCubit =
        PlansAllPlansScreenCubit();
    controller?.cubit = plansAllPlansScreenCubit;
    return plansAllPlansScreenCubit;
  }


}
