import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans-plan-see-details-screen/plans_plan_see_details_screen_controller.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans-plan-see-details-screen/plans_plan_see_details_screen_cubit.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../styles/borders.dart';
import '../../../themes/app_colors.dart';
import '../../../styles/edge_insets.dart';
import '../../../themes/text_styles.dart';

class PlansPlanSeeDetailsScreen extends BaseStatelessWidget<PlansPlanSeeDetailsScreenController, PlansPlanSeeDetailsScreenCubit> {
  const PlansPlanSeeDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlansPlanSeeDetailsScreenCubit>(
        create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<PlansPlanSeeDetailsScreenCubit, PlansPlanSeeDetailsScreenState>(
        listener: (context, state){},
        builder: (context, state){
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(180),
              child: AppBar(
                title: const Text("Evening skin care routine",
                  style: TextStyle(
                      fontWeight: Fonts.f700,
                      fontSize: Fonts.fontSize18,
                      fontFamily: Fonts.fontNunito
                  ),
                ),
                flexibleSpace: Image.asset(
                  'images/good_evening_gif.gif',
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 180,
                      padding: edge_insets_x_7_y_48,
                      alignment: Alignment.topLeft,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'images/good_evening_gif.gif',
                          ),
                          fit: BoxFit.cover
                        )
                      ),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: edge_insets_r_8,
                            child: IconButton(
                              onPressed: () {  },
                              icon: Icon(Icons.arrow_back),
                            ),
                          ),
                          Container(
                            child: const Text("Evening Skin care routine",
                              style: TextStyle(
                                  fontWeight: Fonts.f700,
                                  fontSize: Fonts.fontSize18,
                                  fontFamily: Fonts.fontNunito
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: edge_insets_x_16_y_20,
                      padding: edge_insets_16,
                      decoration: ShapeDecoration(
                        color: AppColors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x26000000),
                            blurRadius: 12,
                            offset: Offset(0, 0),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: edge_insets_10,
                                margin: edge_insets_r_8,
                                decoration: const BoxDecoration(
                                    color: AppColors.grey3,
                                    shape: BoxShape.circle
                                ),
                                child: Image.asset(
                                  'images/notifications_outline.png',
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                              const Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Your notification is',
                                      style: TextStyle(
                                        color: AppColors.textGrey,
                                        fontSize: Fonts.fontSize18,
                                        fontFamily: Fonts.fontNunito,
                                        fontWeight: Fonts.f400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' ',
                                      style: TextStyle(
                                        color: AppColors.textGrey,
                                        fontSize: Fonts.fontSize14,
                                        fontFamily: Fonts.fontNunito,
                                        fontWeight: Fonts.f400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'ON',
                                      style: TextStyle(
                                        color: AppColors.textHeading,
                                        fontSize: Fonts.fontSize18,
                                        fontFamily: Fonts.fontNunito,
                                        fontWeight: Fonts.f700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Image.asset(
                                  'images/create_beecare_outline.png',
                                  width: 22,
                                  height: 22,
                                ),
                                const Text(
                                  'Edit',
                                  style: TextStyle(
                                    color: Color(0xFF6D3E75),
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: edge_insets_x_16_y_20,
                      padding: edge_insets_16,
                      decoration: BoxDecoration(
                        color: AppColors.grey3,
                        borderRadius: radius.br_5
                      ),
                      child: const Column(
                        children: [
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus aliquamar arcu ele...',
                            style: TextStyle(
                              color: Color(0xFF2D2D2D),
                              fontSize: 14,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              Icon(Icons.av_timer, size: 25, color: AppColors.bgPrimary),
                              SizedBox(
                                width: 16,
                              ),
                              Text(
                                '20 min',
                                style: TextStyle(
                                  color: AppColors.textHeading,
                                  fontSize: Fonts.fontSize18,
                                  fontFamily: Fonts.fontNunito,
                                  fontWeight: Fonts.f700,
                                ),
                              ),
                            ],
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

                                    Container(
                                      width: 130,
                                      child: OutlinedButton(
                                        onPressed: () {  },
                                        style: OutlinedButton.styleFrom(
                                          side: BorderSide(color: AppColors.bgPrimary)
                                        ),
                                        child: const Text("How to do",
                                          style: TextStyle(
                                            backgroundColor: AppColors.transparent,
                                            color: AppColors.bgPrimary,
                                            fontFamily: Fonts.fontNunito,
                                            fontSize: Fonts.fontSize14,
                                            fontWeight: Fonts.f700,
                                          ),
                                        ),
                                      ),
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

                                    Container(
                                      width: 130,
                                      child: OutlinedButton(
                                        onPressed: () {  },
                                        style: OutlinedButton.styleFrom(
                                            side: BorderSide(color: AppColors.bgPrimary)
                                        ),
                                        child: const Text("How to do",
                                          style: TextStyle(
                                            backgroundColor: AppColors.transparent,
                                            color: AppColors.bgPrimary,
                                            fontFamily: Fonts.fontNunito,
                                            fontSize: Fonts.fontSize14,
                                            fontWeight: Fonts.f700,
                                          ),
                                        ),
                                      ),
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

                                    Container(
                                      width: 130,
                                      child: OutlinedButton(
                                        onPressed: () {  },
                                        style: OutlinedButton.styleFrom(
                                            side: const BorderSide(color: AppColors.bgPrimary)
                                        ),
                                        child: const Text("How to do",
                                          style: TextStyle(
                                            backgroundColor: AppColors.transparent,
                                            color: AppColors.bgPrimary,
                                            fontFamily: Fonts.fontNunito,
                                            fontSize: Fonts.fontSize14,
                                            fontWeight: Fonts.f700,
                                          ),
                                        ),
                                      ),
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

                                    Container(
                                      width: 130,
                                      child: OutlinedButton(
                                        onPressed: () {  },
                                        style: OutlinedButton.styleFrom(
                                            side: BorderSide(color: AppColors.bgPrimary)
                                        ),
                                        child: const Text("How to do",
                                          style: TextStyle(
                                            backgroundColor: AppColors.transparent,
                                            color: AppColors.bgPrimary,
                                            fontFamily: Fonts.fontNunito,
                                            fontSize: Fonts.fontSize14,
                                            fontWeight: Fonts.f700,
                                          ),
                                        ),
                                      ),
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

                                    Container(
                                      width: 130,
                                      child: OutlinedButton(
                                        onPressed: () {  },
                                        style: OutlinedButton.styleFrom(
                                            side: BorderSide(color: AppColors.bgPrimary)
                                        ),
                                        child: const Text("How to do",
                                          style: TextStyle(
                                            backgroundColor: AppColors.transparent,
                                            color: AppColors.bgPrimary,
                                            fontFamily: Fonts.fontNunito,
                                            fontSize: Fonts.fontSize14,
                                            fontWeight: Fonts.f700,
                                          ),
                                        ),
                                      ),
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

                                    Container(
                                      width: 130,
                                      child: OutlinedButton(
                                        onPressed: () {  },
                                        style: OutlinedButton.styleFrom(
                                            side: BorderSide(color: AppColors.bgPrimary)
                                        ),
                                        child: const Text("How to do",
                                          style: TextStyle(
                                            backgroundColor: AppColors.transparent,
                                            color: AppColors.bgPrimary,
                                            fontFamily: Fonts.fontNunito,
                                            fontSize: Fonts.fontSize14,
                                            fontWeight: Fonts.f700,
                                          ),
                                        ),
                                      ),
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
                )
            ),
          );
        },
      ),
    );
  }

  @override
  PlansPlanSeeDetailsScreenCubit createCubitAndAssignToController(BuildContext context) {
    PlansPlanSeeDetailsScreenCubit plansPlanSeeDetailsScreenCubit =
        PlansPlanSeeDetailsScreenCubit();
    controller?.cubit = plansPlanSeeDetailsScreenCubit;
    return plansPlanSeeDetailsScreenCubit;
  }
}

