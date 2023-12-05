import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans-plan-home-details-screen/plans-plan-home-details-screen.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans-plan-see-details-screen/plans-plan-see-details-screen.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans_beecare_home_screen/plans_beecare_home_screen_controller.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans_beecare_home_screen/plans_beecare_home_screen_cubit.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans_my_plans_screen/plans_my_plans_screen.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../ads/widgets/ads_banner_ad_widget/ads_banner_ad_widget.dart';
import '../../../themes/app_colors.dart';
import '../../widgets/plans_plan_details_banner_swiper_widget/plans_plan_details_banner_swiper_widget.dart';
import '../../widgets/plans_plan_details_circle_widget/plans_plan_details_circle_widget.dart';
import '../../widgets/plans_plan_details_full_swiper_widget/plans_plan_details_full_swiper_widget.dart';
import '../../widgets/plans_plan_details_row_swiper_widget/plans_plan_details_row_swiper_widget.dart';
import '../../widgets/plans_plan_details_row_widget/plans_plan_details_row_widget.dart';

class PlansBeecareHomeScreen extends BaseStatelessWidget<PlansBeecareHomeScreenController, PlansBeecareHomeScreenCubit>{
  const PlansBeecareHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlansBeecareHomeScreenCubit>(
        create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<PlansBeecareHomeScreenCubit, PlansBeecareHomeScreenState>(
        listener: (context, state){},
        builder: (context, state){
          return Scaffold(
            appBar: AppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        child: const CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.arrow_back,
                            size: 30,
                            weight: 1,
                            // color: AppColors.textHeading,
                          ),
                        ),
                        onTap: () {},
                      ),
                      Container(
                        padding: edge_insets_l_8,
                        child: const Text("Beecare", style: TextStyles.textNormal),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        child: TextButton.icon(
                          onPressed: () {
                            // Navigate to the second page
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PlansMyPlansScreen()),
                              // builder: (context) => PlansPlanSeeDetails())
                            );
                          },
                          icon: const Icon(
                            // <-- Icon
                            Icons.article,
                            size: 24.0,
                          ),
                          label: const Text(
                            'My plans',
                            style: TextStyle(
                              color: Color(0xFF6D3E75),
                              fontSize: 18,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),

            body: SingleChildScrollView(
              child: Container(
                  margin: edge_insets_b_100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PlansPlanHomeDetailsScreen()));
                      }, child: const Text("Plan Home Details")),
                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const PlansPlanSeeDetailsScreen()));
                      }, child: const Text("Plan See Details")),


                      Image.asset('images/plans_home_img.png'),

                      const PlansPlanDetailsCircleWidget(),

                      const PlansPlanDetailsFullSwiperWidget(),

                      const PlansPlanDetailsRowWidget(),

                      const PlansPlanDetailsRowSwiperWidget(),

                      const PlansPlanDetailsBannerSwiperWidget()

                    ],
                  )
              ),
            ),
            bottomNavigationBar: Container(
              color: AppColors.primary,
              child: AdsBannerAdWidget(),
            ),
          );
        },
      ),
    );
  }

  @override
  PlansBeecareHomeScreenCubit createCubitAndAssignToController(BuildContext context) {
    PlansBeecareHomeScreenCubit plansBeecareHomeScreenCubit =
        PlansBeecareHomeScreenCubit();
    controller?.cubit = plansBeecareHomeScreenCubit;
    return plansBeecareHomeScreenCubit;
  }

}