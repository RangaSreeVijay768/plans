import 'package:beebloom_water_tracker/app/plans/widgets/plans_plan_details_banner_swiper_widget/plans_plan_details_banner_swiper_widget_controller.dart';
import 'package:beebloom_water_tracker/app/plans/widgets/plans_plan_details_banner_swiper_widget/plans_plan_details_banner_swiper_widget_cubit.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widgets/base_stateless_widget.dart';

class PlansPlanDetailsBannerSwiperWidget extends BaseStatelessWidget<PlansPlanDetailsBannerSwiperWidgetController, PlansPlanDetailsBannerSwiperWidgetCubit>{
  const PlansPlanDetailsBannerSwiperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlansPlanDetailsBannerSwiperWidgetCubit>(
        create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<PlansPlanDetailsBannerSwiperWidgetCubit, PlansPlanDetailsBannerSwiperWidgetState>(
        listener: (context, state){},
        builder: (context, state){
          return Column(
            children: [
              Container(
                padding: edge_insets_x_24_y_32,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Shoulder sessions at home',
                          style: TextStyle(
                            fontSize: Fonts.fontSize18,
                            fontFamily: Fonts.fontNunito,
                            fontWeight: Fonts.f700,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'see all',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: AppColors.bgPrimary,
                            fontSize: Fonts.fontSize18,
                            fontFamily: Fonts.fontNunito,
                            fontWeight: Fonts.f700,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 227, // Adjust the height as needed
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      color: AppColors.bgPrimary,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                              'images/shoulder_last_img.png', height: 227),
                          Container(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Shoulder\nsessions at\nhome',
                                  style: TextStyle(
                                    color: AppColors.grey1,
                                    fontSize: Fonts.fontSize24,
                                    fontFamily: Fonts.fontNunito,
                                    fontWeight: Fonts.f400,
                                  ),
                                ),
                                const Row(

                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: AppColors.coinProgress,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: AppColors.coinProgress,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: AppColors.coinProgress,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: AppColors.grey4,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: AppColors.grey4,
                                    ),
                                    Text(
                                      '(300+)',
                                      style: TextStyle(
                                        color: AppColors.textGrey,
                                        fontSize: 10,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      '₹ 20',
                                      style: TextStyle(
                                        color: AppColors.white,
                                        fontSize: Fonts.fontSize24,
                                        fontFamily: Fonts.fontNunito,
                                        fontWeight: Fonts.f700,
                                      ),
                                    ),
                                    Text('150',
                                      style: TextStyle(
                                        color: AppColors.grey4,
                                        fontSize: Fonts.fontSize14,
                                        fontFamily: Fonts.fontLato,
                                        fontWeight: Fonts.f500,
                                        decoration: TextDecoration.lineThrough,
                                      ),)
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'Or pay using',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColors.green,
                                        fontSize: Fonts.fontSize14,
                                        fontFamily: Fonts.fontNunito,
                                        fontWeight: Fonts.f400,
                                      ),),
                                    Image.asset('images/coin.png', width: 17,),
                                    const Text(
                                      '199',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColors.green,
                                        fontSize: Fonts.fontSize14,
                                        fontFamily: Fonts.fontNunito,
                                        fontWeight: Fonts.f400,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),


                        ],
                      ),
                    ),
                    Container(
                      color: Color(0xFF6D3E75),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                              'images/shoulder_last_img.png', height: 227),
                          Container(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Shoulder\nsessions at\nhome',
                                  style: TextStyle(
                                    color: AppColors.grey1,
                                    fontSize: Fonts.fontSize24,
                                    fontFamily: Fonts.fontNunito,
                                    fontWeight: Fonts.f400,
                                  ),
                                ),
                                const Row(

                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: AppColors.coinProgress,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: AppColors.coinProgress,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: AppColors.coinProgress,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: AppColors.grey4,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: AppColors.grey4,
                                    ),
                                    Text(
                                      '(300+)',
                                      style: TextStyle(
                                        color: AppColors.textGrey,
                                        fontSize: 10,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      '₹ 20',
                                      style: TextStyle(
                                        color: AppColors.white,
                                        fontSize: Fonts.fontSize24,
                                        fontFamily: Fonts.fontNunito,
                                        fontWeight: Fonts.f700,
                                      ),
                                    ),
                                    Text('150',
                                      style: TextStyle(
                                        color: AppColors.grey4,
                                        fontSize: Fonts.fontSize14,
                                        fontFamily: Fonts.fontLato,
                                        fontWeight: Fonts.f500,
                                        decoration: TextDecoration.lineThrough,
                                      ),)
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'Or pay using',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColors.green,
                                        fontSize: Fonts.fontSize14,
                                        fontFamily: Fonts.fontNunito,
                                        fontWeight: Fonts.f400,
                                      ),),
                                    Image.asset('images/coin.png', width: 17,),
                                    const Text(
                                      '199',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColors.green,
                                        fontSize: Fonts.fontSize14,
                                        fontFamily: Fonts.fontNunito,
                                        fontWeight: Fonts.f400,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),


                        ],
                      ),
                    ),
                    Container(
                      color: Color(0xFF6D3E75),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                              'images/shoulder_last_img.png', height: 227),
                          Container(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Shoulder\nsessions at\nhome',
                                  style: TextStyle(
                                    color: AppColors.grey1,
                                    fontSize: Fonts.fontSize24,
                                    fontFamily: Fonts.fontNunito,
                                    fontWeight: Fonts.f400,
                                  ),
                                ),
                                const Row(

                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: AppColors.coinProgress,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: AppColors.coinProgress,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: AppColors.coinProgress,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: AppColors.grey4,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: AppColors.grey4,
                                    ),
                                    Text(
                                      '(300+)',
                                      style: TextStyle(
                                        color: AppColors.textGrey,
                                        fontSize: 10,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      '₹ 20',
                                      style: TextStyle(
                                        color: AppColors.white,
                                        fontSize: Fonts.fontSize24,
                                        fontFamily: Fonts.fontNunito,
                                        fontWeight: Fonts.f700,
                                      ),
                                    ),
                                    Text('150',
                                      style: TextStyle(
                                        color: AppColors.grey4,
                                        fontSize: Fonts.fontSize14,
                                        fontFamily: Fonts.fontLato,
                                        fontWeight: Fonts.f500,
                                        decoration: TextDecoration.lineThrough,
                                      ),)
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'Or pay using',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColors.green,
                                        fontSize: Fonts.fontSize14,
                                        fontFamily: Fonts.fontNunito,
                                        fontWeight: Fonts.f400,
                                      ),),
                                    Image.asset('images/coin.png', width: 17,),
                                    const Text(
                                      '199',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColors.green,
                                        fontSize: Fonts.fontSize14,
                                        fontFamily: Fonts.fontNunito,
                                        fontWeight: Fonts.f400,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),


                        ],
                      ),
                    ),


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
  PlansPlanDetailsBannerSwiperWidgetCubit createCubitAndAssignToController(BuildContext context) {
    PlansPlanDetailsBannerSwiperWidgetCubit plansPlanDetailsBannerSwiperWidgetCubit =
        PlansPlanDetailsBannerSwiperWidgetCubit();
    controller?.cubit = plansPlanDetailsBannerSwiperWidgetCubit;
    return plansPlanDetailsBannerSwiperWidgetCubit;
  }
  
}