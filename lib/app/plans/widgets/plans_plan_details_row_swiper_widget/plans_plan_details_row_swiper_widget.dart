import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/plans/widgets/plans_plan_details_row_swiper_widget/plans_plan_details_row_swiper_widget_controller.dart';
import 'package:beebloom_water_tracker/app/plans/widgets/plans_plan_details_row_swiper_widget/plans_plan_details_row_swiper_widget_cubit.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlansPlanDetailsRowSwiperWidget extends BaseStatelessWidget<
    PlansPlanDetailsRowSwiperWidgetController,
    PlansPlanDetailsRowSwiperWidgetCubit> {
  const PlansPlanDetailsRowSwiperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlansPlanDetailsRowSwiperWidgetCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<PlansPlanDetailsRowSwiperWidgetCubit,
          PlansPlanDetailsRowSwiperWidgetState>(
        listener: (context, state) {},
        builder: (context, state) {
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
                height: 310, // Adjust the height as needed
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      padding: edge_insets_x_16,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'images/yoga.png',
                            height: 187,
                            width: 311,
                          ),
                          const Column(
                            children: [
                              Text(
                                'Lorem ipsum dolor sit amet \n consectetu Id imperdiet porttitor.',
                                style: TextStyle(
                                  fontSize: Fonts.fontSize18,
                                  fontFamily: Fonts.fontNunito,
                                  fontWeight: Fonts.f400,
                                ),
                              ),
                            ],
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
                                color: AppColors.coinProgress,
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: AppColors.grey4,
                              ),
                              Text(
                                '(300+)',
                                style: TextStyle(
                                  color: Color(0xFF676767),
                                  fontSize: Fonts.fontSize10,
                                  fontFamily: Fonts.fontLato,
                                  fontWeight: Fonts.f700,
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Text(
                                '₹ 20',
                                style: TextStyle(
                                  fontSize: Fonts.fontSize18,
                                  fontFamily: Fonts.fontNunito,
                                  fontWeight: Fonts.f700,
                                ),
                              ),
                              Text(
                                '150',
                                style: TextStyle(
                                  color: AppColors.grey4,
                                  fontSize: Fonts.fontSize14,
                                  fontFamily: Fonts.fontLato,
                                  fontWeight: Fonts.f500,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              )
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
                                ),
                              ),
                              Image.asset(
                                'images/coin.png',
                                width: 17,
                              ),
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
                    Container(
                      padding: edge_insets_x_16,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'images/yoga.png',
                            height: 187,
                            width: 311,
                          ),
                          const Column(
                            children: [
                              Text(
                                'Lorem ipsum dolor sit amet \n consectetu Id imperdiet porttitor.',
                                style: TextStyle(
                                  fontSize: Fonts.fontSize18,
                                  fontFamily: Fonts.fontNunito,
                                  fontWeight: Fonts.f400,
                                ),
                              ),
                            ],
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
                                color: AppColors.coinProgress,
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: AppColors.grey4,
                              ),
                              Text(
                                '(300+)',
                                style: TextStyle(
                                  color: Color(0xFF676767),
                                  fontSize: Fonts.fontSize10,
                                  fontFamily: Fonts.fontLato,
                                  fontWeight: Fonts.f700,
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Text(
                                '₹ 20',
                                style: TextStyle(
                                  fontSize: Fonts.fontSize18,
                                  fontFamily: Fonts.fontNunito,
                                  fontWeight: Fonts.f700,
                                ),
                              ),
                              Text(
                                '150',
                                style: TextStyle(
                                  color: AppColors.grey4,
                                  fontSize: Fonts.fontSize14,
                                  fontFamily: Fonts.fontLato,
                                  fontWeight: Fonts.f500,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              )
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
                                ),
                              ),
                              Image.asset(
                                'images/coin.png',
                                width: 17,
                              ),
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
                    Container(
                      padding: edge_insets_x_16,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'images/yoga.png',
                            height: 187,
                            width: 311,
                          ),
                          const Column(
                            children: [
                              Text(
                                'Lorem ipsum dolor sit amet \n consectetu Id imperdiet porttitor.',
                                style: TextStyle(
                                  fontSize: Fonts.fontSize18,
                                  fontFamily: Fonts.fontNunito,
                                  fontWeight: Fonts.f400,
                                ),
                              ),
                            ],
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
                                color: AppColors.coinProgress,
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: AppColors.grey4,
                              ),
                              Text(
                                '(300+)',
                                style: TextStyle(
                                  color: Color(0xFF676767),
                                  fontSize: Fonts.fontSize10,
                                  fontFamily: Fonts.fontLato,
                                  fontWeight: Fonts.f700,
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Text(
                                '₹ 20',
                                style: TextStyle(
                                  fontSize: Fonts.fontSize18,
                                  fontFamily: Fonts.fontNunito,
                                  fontWeight: Fonts.f700,
                                ),
                              ),
                              Text(
                                '150',
                                style: TextStyle(
                                  color: AppColors.grey4,
                                  fontSize: Fonts.fontSize14,
                                  fontFamily: Fonts.fontLato,
                                  fontWeight: Fonts.f500,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              )
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
                                ),
                              ),
                              Image.asset(
                                'images/coin.png',
                                width: 17,
                              ),
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
          );
        },
      ),
    );
  }

  @override
  PlansPlanDetailsRowSwiperWidgetCubit createCubitAndAssignToController(
      BuildContext context) {
    PlansPlanDetailsRowSwiperWidgetCubit plansPlanDetailsRowSwiperWidgetCubit =
        PlansPlanDetailsRowSwiperWidgetCubit();
    controller?.cubit = plansPlanDetailsRowSwiperWidgetCubit;
    return plansPlanDetailsRowSwiperWidgetCubit;
  }
}
