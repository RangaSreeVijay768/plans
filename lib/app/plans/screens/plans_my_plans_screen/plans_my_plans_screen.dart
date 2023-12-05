import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans_my_plans_screen/plans_my_plans_screen_controller.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans_my_plans_screen/plans_my_plans_screen_cubit.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../themes/app_colors.dart';
import '../../../styles/edge_insets.dart';
import '../../widgets/plans_my_plans_how_to_do_modal_widget/plans_my_plans_how_to_do_modal_widget.dart';
import '../../widgets/plans_plan_subscription_details_current_widget/plans_plan_subscription_details_current_widget.dart';
import '../../widgets/plans_plan_subscription_details_expired_widget/plans_plan_subscription_details_expired_widget.dart';
import '../../widgets/plans_plan_subscription_details_next_widget/plans_plan_subscription_details_next_widget.dart';

class PlansMyPlansScreen extends BaseStatelessWidget<PlansMyPlansScreenController, PlansMyPlansScreenCubit>{
  const PlansMyPlansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlansMyPlansScreenCubit>(
        create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<PlansMyPlansScreenCubit, PlansMyPlansScreenState>(
        listener: (context, state){},
        builder: (context, state){
          return Scaffold(
              appBar: AppBar(
                title: const Text('My plans'),
              ),
              body: SingleChildScrollView(
                padding: edge_insets_x_10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      margin: edge_insets_y_24,
                      child: TextButton(
                        onPressed: (){
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (BuildContext context) {
                              return const MyPlansHowToDoModal();
                            },
                          );
                        },
                        child: const Text('How to do modal'),
                      ),
                    ),

                    const PlansPlanSubscriptionDetailsCurrentWidget(),
                    const SizedBox(
                      height: 24,
                    ),
                    const PlansPlanSubscriptionDetailsNextWidget(),
                    const SizedBox(
                      height: 24,
                    ),
                    const PlansPlanSubscriptionDetailsCurrentWidget(),

                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Container(
                          child: const Text(
                            'Expired plans',
                            style: TextStyle(
                              color: AppColors.textRed,
                              fontSize: Fonts.fontSize18,
                              fontFamily: Fonts.fontNunito,
                              fontWeight: Fonts.f700,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 240,
                          decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 0.5,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: AppColors.textRed,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),

                    const PlansPlanSubscriptionDetailsExpiredWidget(),
                    const SizedBox(
                      height: 40,
                    ),
                    const PlansPlanSubscriptionDetailsExpiredWidget(),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ));
        },
      )
    );
  }

  @override
  PlansMyPlansScreenCubit createCubitAndAssignToController(BuildContext context) {
    PlansMyPlansScreenCubit plansMyPlansScreenCubit =
        PlansMyPlansScreenCubit();
    controller?.cubit = plansMyPlansScreenCubit;
    return plansMyPlansScreenCubit;
  }

}
