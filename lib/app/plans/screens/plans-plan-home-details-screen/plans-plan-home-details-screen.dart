import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans-plan-home-details-screen/plans-plan-home-details-screen-controller.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans-plan-home-details-screen/plans_plan_home_details_screen_cubit.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../styles/borders.dart';
import '../../../themes/app_colors.dart';
import '../../../styles/edge_insets.dart';
import '../../../themes/text_styles.dart';


class PlansPlanHomeDetailsScreen extends BaseStatelessWidget
      <PlansPlanHomeDetailsScreenController, PlansPlanHomeDetailsScreenCubit> {
  const PlansPlanHomeDetailsScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlansPlanHomeDetailsScreenCubit>(
        create: (context) => createCubitAndAssignToController(context),
        child: BlocConsumer<PlansPlanHomeDetailsScreenCubit, PlansPlanHomeDetailsScreenState>(
          listener: (context, state){},
          builder: (context, state){
            return Scaffold(
              appBar: AppBar(
                title: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: const Text("Morning Skin care routine",
                                style: TextStyles.textNormal),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              body: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: edge_insets_x_24_y_40,
                      padding: edge_insets_24,
                      decoration: BoxDecoration(
                          borderRadius: radius.br_5, color: AppColors.grey3),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: borders.bb_1px_grey2,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: const Text(
                                        'Day 2',
                                        style: TextStyle(
                                          color: AppColors.textNormal,
                                          fontSize: Fonts.fontSize18,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f700,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: edge_insets_y_8,
                            padding: edge_insets_t_16,
                            child: Row(
                              children: [
                                Container(
                                  margin: edge_insets_r_8,
                                  width: 5,
                                  height: 5,
                                  decoration: const ShapeDecoration(
                                    color: AppColors.bgPrimary,
                                    shape: OvalBorder(),
                                  ),
                                ),
                                Container(
                                  margin: edge_insets_l_4,
                                  child: Row(
                                    children: [
                                      Container(
                                        child: const Text(
                                          '80 %',
                                          style: TextStyle(
                                            color: AppColors.bgPrimary,
                                            fontSize: Fonts.fontSize12,
                                            fontFamily: Fonts.fontNunito,
                                            fontWeight: Fonts.f700,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: edge_insets_l_4,
                                        child: const Text(
                                          'completed',
                                          style: TextStyle(
                                            color: AppColors.textGrey,
                                            fontSize: Fonts.fontSize12,
                                            fontFamily: Fonts.fontNunito,
                                            fontWeight: Fonts.f400,
                                          ),
                                        ),
                                      ),


                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: edge_insets_l_8,
                            child: LinearPercentIndicator(
                              percent: 0.6,
                              lineHeight: 16,
                              progressColor: AppColors.bgPrimary,
                              backgroundColor: AppColors.grey1,
                              barRadius: const Radius.circular(10),
                            ),
                          ),
                          Container(

                            margin: edge_insets_t_8,
                            child: Row(
                              children: [
                                Container(
                                  margin: edge_insets_r_8,
                                  width: 5,
                                  height: 5,
                                  decoration: const ShapeDecoration(
                                    color: AppColors.bgPrimary,
                                    shape: OvalBorder(),
                                  ),
                                ),
                                Container(
                                  margin: edge_insets_l_4,
                                  child: Row(
                                    children: [
                                      Container(
                                        child: const Text(
                                          '14 /',
                                          style: TextStyle(
                                            color: AppColors.bgPrimary,
                                            fontSize: 12,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: edge_insets_l_4,
                                        child: const Text(
                                          ' 30 steps completed',
                                          style: TextStyle(
                                            color: AppColors.textGrey,
                                            fontSize: 12,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: edge_insets_t_8,
                            child: Row(
                              children: [
                                Container(
                                  margin: edge_insets_r_8,
                                  width: 5,
                                  height: 5,
                                  decoration: const ShapeDecoration(
                                    color: AppColors.bgPrimary,
                                    shape: OvalBorder(),
                                  ),
                                ),
                                Container(
                                  margin: edge_insets_l_4,
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: edge_insets_l_4,
                                        child: const Text(
                                          'Routine start time : ',
                                          style: TextStyle(
                                            color: AppColors.textGrey,
                                            fontSize: 12,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: const Text(
                                          '09 : 30 am',
                                          style: TextStyle(
                                            color: AppColors.bgPrimary,
                                            fontSize: 12,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: edge_insets_t_8,
                            child: Row(
                              children: [
                                Container(
                                  margin: edge_insets_r_8,
                                  width: 5,
                                  height: 5,
                                  decoration: const ShapeDecoration(
                                    color: AppColors.bgPrimary,
                                    shape: OvalBorder(),
                                  ),
                                ),
                                Container(
                                  margin: edge_insets_l_4,
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: edge_insets_l_4,
                                        child: const Text(
                                          'Duration : ',
                                          style: TextStyle(
                                            color: AppColors.textGrey,
                                            fontSize: 12,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: const Text(
                                          '20 min',
                                          style: TextStyle(
                                            color: AppColors.bgPrimary,
                                            fontSize: 12,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: edge_insets_l_24,
                      child: const Text(
                        'Steps details',
                        style: TextStyle(
                          fontSize: Fonts.fontSize18,
                          fontFamily: Fonts.fontNunito,
                          fontWeight: Fonts.f700,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: borders.bb_1px_grey2,
                      ),
                      padding: edge_insets_x_24_y_16,

                      child: Column(
                        children: [

                          Row(
                            children: [
                              Image.asset(
                                'images/plan_routine_details_img.png',
                                width: 90,
                                height: 90,
                              ),
                              Container(
                                margin: edge_insets_l_24,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: const Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Step 1 :',
                                              style: TextStyle(
                                                color: AppColors.textGrey,
                                                fontSize: Fonts.fontSize14,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f400,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' Cleansing',
                                              style: TextStyle(
                                                color: AppColors.textHeading,
                                                fontSize: Fonts.fontSize14,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f700,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: edge_insets_t_8,
                                      child: const Text(
                                        'Remove germs, dirt, makeup,\n and irritation from your skin.',
                                        style: TextStyle(
                                          color: AppColors.textGrey,
                                          fontSize: Fonts.fontSize14,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f400,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: edge_insets_y_24,
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.av_timer,
                                            color: AppColors.bgPrimary,
                                            size: 16,
                                          ),
                                          Container(
                                            child: const Text(
                                              ' 60 Sec',
                                              style: TextStyle(
                                                color: AppColors.textHeading,
                                                fontSize: Fonts.fontSize12,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f700,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    Row(
                                      children: [
                                        Container(
                                          margin: edge_insets_b_16,
                                          child: Row(
                                            children: [
                                              const Icon(
                                                Icons.check,
                                                size: 16,
                                                color: AppColors.green,
                                              ),
                                              Container(
                                                margin: edge_insets_l_8,
                                                child: const Text(
                                                  'Completed',
                                                  style: TextStyle(
                                                    color: AppColors.green,
                                                    fontSize: Fonts.fontSize14,
                                                    fontFamily: Fonts.fontNunito,
                                                    fontWeight: Fonts.f700,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: borders.bb_1px_grey2,
                      ),
                      padding: edge_insets_x_24_y_16,

                      child: Column(
                        children: [

                          Row(
                            children: [
                              Image.asset(
                                'images/plan_routine_details_img.png',
                                width: 90,
                                height: 90,
                              ),
                              Container(
                                margin: edge_insets_l_24,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: const Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Step 1 :',
                                              style: TextStyle(
                                                color: AppColors.textGrey,
                                                fontSize: Fonts.fontSize14,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f400,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' Cleansing',
                                              style: TextStyle(
                                                color: AppColors.textHeading,
                                                fontSize: Fonts.fontSize14,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f700,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: edge_insets_t_8,
                                      child: const Text(
                                        'Remove germs, dirt, makeup,\n and irritation from your skin.',
                                        style: TextStyle(
                                          color: AppColors.textGrey,
                                          fontSize: Fonts.fontSize14,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f400,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: edge_insets_y_24,
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.av_timer,
                                            color: AppColors.bgPrimary,
                                            size: 16,
                                          ),
                                          Container(
                                            child: const Text(
                                              ' 60 Sec',
                                              style: TextStyle(
                                                color: AppColors.textHeading,
                                                fontSize: Fonts.fontSize12,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f700,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    Row(
                                      children: [
                                        Container(
                                          margin: edge_insets_b_16,
                                          child: Row(
                                            children: [
                                              const Icon(
                                                Icons.check,
                                                size: 16,
                                                color: AppColors.green,
                                              ),
                                              Container(
                                                margin: edge_insets_l_8,
                                                child: const Text(
                                                  'Completed',
                                                  style: TextStyle(
                                                    color: AppColors.green,
                                                    fontSize: Fonts.fontSize14,
                                                    fontFamily: Fonts.fontNunito,
                                                    fontWeight: Fonts.f700,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: borders.bb_1px_grey2,
                      ),
                      padding: edge_insets_x_24_y_16,

                      child: Column(
                        children: [

                          Row(
                            children: [
                              Image.asset(
                                'images/plan_routine_details_img.png',
                                width: 90,
                                height: 90,
                              ),
                              Container(
                                margin: edge_insets_l_24,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: const Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Step 1 :',
                                              style: TextStyle(
                                                color: AppColors.textGrey,
                                                fontSize: Fonts.fontSize14,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f400,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' Cleansing',
                                              style: TextStyle(
                                                color: AppColors.textHeading,
                                                fontSize: Fonts.fontSize14,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f700,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: edge_insets_t_8,
                                      child: const Text(
                                        'Remove germs, dirt, makeup,\n and irritation from your skin.',
                                        style: TextStyle(
                                          color: AppColors.textGrey,
                                          fontSize: Fonts.fontSize14,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f400,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: edge_insets_y_24,
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.av_timer,
                                            color: AppColors.bgPrimary,
                                            size: 16,
                                          ),
                                          Container(
                                            child: const Text(
                                              ' 60 Sec',
                                              style: TextStyle(
                                                color: AppColors.textHeading,
                                                fontSize: Fonts.fontSize12,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f700,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    Row(
                                      children: [
                                        Container(
                                          margin: edge_insets_b_16,
                                          child: Row(
                                            children: [
                                              const Icon(
                                                Icons.check,
                                                size: 16,
                                                color: AppColors.green,
                                              ),
                                              Container(
                                                margin: edge_insets_l_8,
                                                child: const Text(
                                                  'Completed',
                                                  style: TextStyle(
                                                    color: AppColors.green,
                                                    fontSize: Fonts.fontSize14,
                                                    fontFamily: Fonts.fontNunito,
                                                    fontWeight: Fonts.f700,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: borders.bb_1px_grey2,
                      ),
                      padding: edge_insets_x_24_y_16,

                      child: Column(
                        children: [

                          Row(
                            children: [
                              Image.asset(
                                'images/plan_routine_details_img.png',
                                width: 90,
                                height: 90,
                              ),
                              Container(
                                margin: edge_insets_l_24,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: const Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Step 1 :',
                                              style: TextStyle(
                                                color: AppColors.textGrey,
                                                fontSize: Fonts.fontSize14,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f400,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' Cleansing',
                                              style: TextStyle(
                                                color: AppColors.textHeading,
                                                fontSize: Fonts.fontSize14,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f700,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: edge_insets_t_8,
                                      child: const Text(
                                        'Remove germs, dirt, makeup,\n and irritation from your skin.',
                                        style: TextStyle(
                                          color: AppColors.textGrey,
                                          fontSize: Fonts.fontSize14,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f400,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: edge_insets_y_24,
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.av_timer,
                                            color: AppColors.bgPrimary,
                                            size: 16,
                                          ),
                                          Container(
                                            child: const Text(
                                              ' 60 Sec',
                                              style: TextStyle(
                                                color: AppColors.textHeading,
                                                fontSize: Fonts.fontSize12,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f700,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    Row(
                                      children: [
                                        Container(
                                          margin: edge_insets_b_16,
                                          child: Row(
                                            children: [
                                              const Icon(
                                                Icons.check,
                                                size: 16,
                                                color: AppColors.green,
                                              ),
                                              Container(
                                                margin: edge_insets_l_8,
                                                child: const Text(
                                                  'Completed',
                                                  style: TextStyle(
                                                    color: AppColors.green,
                                                    fontSize: Fonts.fontSize14,
                                                    fontFamily: Fonts.fontNunito,
                                                    fontWeight: Fonts.f700,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: borders.bb_1px_grey2,
                      ),
                      padding: edge_insets_x_24_y_16,

                      child: Column(
                        children: [

                          Row(
                            children: [
                              Image.asset(
                                'images/plan_routine_details_img.png',
                                width: 90,
                                height: 90,
                              ),
                              Container(
                                margin: edge_insets_l_24,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: const Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Step 1 :',
                                              style: TextStyle(
                                                color: AppColors.textGrey,
                                                fontSize: Fonts.fontSize14,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f400,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' Cleansing',
                                              style: TextStyle(
                                                color: AppColors.textHeading,
                                                fontSize: Fonts.fontSize14,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f700,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: edge_insets_t_8,
                                      child: const Text(
                                        'Remove germs, dirt, makeup,\n and irritation from your skin.',
                                        style: TextStyle(
                                          color: AppColors.textGrey,
                                          fontSize: Fonts.fontSize14,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f400,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: edge_insets_y_24,
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.av_timer,
                                            color: AppColors.bgPrimary,
                                            size: 16,
                                          ),
                                          Container(
                                            child: const Text(
                                              ' 60 Sec',
                                              style: TextStyle(
                                                color: AppColors.textHeading,
                                                fontSize: Fonts.fontSize12,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f700,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    Row(
                                      children: [
                                        Container(
                                          margin: edge_insets_b_16,
                                          child: Row(
                                            children: [
                                              const Icon(
                                                Icons.check,
                                                size: 16,
                                                color: AppColors.green,
                                              ),
                                              Container(
                                                margin: edge_insets_l_8,
                                                child: const Text(
                                                  'Completed',
                                                  style: TextStyle(
                                                    color: AppColors.green,
                                                    fontSize: Fonts.fontSize14,
                                                    fontFamily: Fonts.fontNunito,
                                                    fontWeight: Fonts.f700,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: borders.bb_1px_grey2,
                      ),
                      padding: edge_insets_x_24_y_16,

                      child: Column(
                        children: [

                          Row(
                            children: [
                              Image.asset(
                                'images/plan_routine_details_img.png',
                                width: 90,
                                height: 90,
                              ),
                              Container(
                                margin: edge_insets_l_24,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: const Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Step 1 :',
                                              style: TextStyle(
                                                color: AppColors.textGrey,
                                                fontSize: Fonts.fontSize14,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f400,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' Cleansing',
                                              style: TextStyle(
                                                color: AppColors.textHeading,
                                                fontSize: Fonts.fontSize14,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f700,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: edge_insets_t_8,
                                      child: const Text(
                                        'Remove germs, dirt, makeup,\n and irritation from your skin.',
                                        style: TextStyle(
                                          color: AppColors.textGrey,
                                          fontSize: Fonts.fontSize14,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f400,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: edge_insets_y_24,
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.av_timer,
                                            color: AppColors.bgPrimary,
                                            size: 16,
                                          ),
                                          Container(
                                            child: const Text(
                                              ' 60 Sec',
                                              style: TextStyle(
                                                color: AppColors.textHeading,
                                                fontSize: Fonts.fontSize12,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f700,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    Row(
                                      children: [
                                        Container(
                                          margin: edge_insets_b_16,
                                          child: Row(
                                            children: [
                                              const Icon(
                                                Icons.check,
                                                size: 16,
                                                color: AppColors.green,
                                              ),
                                              Container(
                                                margin: edge_insets_l_8,
                                                child: const Text(
                                                  'Completed',
                                                  style: TextStyle(
                                                    color: AppColors.green,
                                                    fontSize: Fonts.fontSize14,
                                                    fontFamily: Fonts.fontNunito,
                                                    fontWeight: Fonts.f700,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),

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
  PlansPlanHomeDetailsScreenCubit createCubitAndAssignToController(BuildContext context) {
    PlansPlanHomeDetailsScreenCubit plansPlanHomeDetailsScreenCubit =
        PlansPlanHomeDetailsScreenCubit();
    controller?.cubit = plansPlanHomeDetailsScreenCubit;
    return plansPlanHomeDetailsScreenCubit;
  }
}
