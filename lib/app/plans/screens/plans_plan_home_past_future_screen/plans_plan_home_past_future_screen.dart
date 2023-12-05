import 'package:beebloom_water_tracker/app/plans/screens/plans_plan_home_past_future_screen/plans_plan_home_past_future_screen_controller.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans_plan_home_past_future_screen/plans_plan_home_past_future_screen_cubit.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:beebloom_water_tracker/app/themes/shadows.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../core/widgets/base_stateless_widget.dart';
import '../../../styles/borders.dart';

class PlansPlanHomePastFutureScreen extends BaseStatelessWidget<PlansPlanHomePastFutureScreenController, PlansPlanHomePastFutureScreenCubit>{
  const PlansPlanHomePastFutureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlansPlanHomePastFutureScreenCubit>(
        create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<PlansPlanHomePastFutureScreenCubit, PlansPlanHomePastFutureScreenState>(
        listener: (context, state){},
        builder: (context, state){
          bool isExpanded = false;
          double screenWidth = MediaQuery.of(context).size.width;
          return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: AppColors.transparent,
              elevation: 0,
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    // width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                        colors: [
                          AppColors.transparent,
                          AppColors.transparent08,
                        ],
                      ),
                    ),
                    child: Container(
                      height: 246,
                      padding: edge_insets_24,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/all_plans_top_image.png',),
                              fit: BoxFit.cover
                          )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: const Text(
                              'Dry skin care routine Dry skin \ncare routine',
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: Fonts.fontSize24,
                                fontFamily: Fonts.fontNunito,
                                fontWeight: Fonts.f400,
                              ),
                            ),
                          ),
                          Container(
                            margin: edge_insets_t_16,
                            child: RichText(
                              text: const TextSpan(
                                text: '15 ',
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontFamily: Fonts.fontNunito,
                                  fontSize: Fonts.fontSize18,
                                  fontWeight: Fonts.f700
                                ),
                                children: [
                                  TextSpan(
                                    text: '/ 21 days completed',
                                    style: TextStyle(
                                      color: AppColors.grey4,
                                      fontWeight: Fonts.f400
                                    )
                                  ),
                                ]
                              ),
                            ),
                          ),
                          const SizedBox(height: 8,),
                          LinearPercentIndicator(
                            lineHeight: 16,
                            padding: edge_insets_0,
                            percent: 0.6,
                            barRadius: const Radius.circular(10),
                            progressColor: AppColors.bgPrimary,
                            backgroundColor: AppColors.grey4,
                          ),

                        ],
                      ),
                    ),
                  ),

                  //Routine details
                  Container(
                    padding: edge_insets_x_24,
                    margin: edge_insets_t_40,
                    child: const Text(
                      'Routine details',
                      style: TextStyle(
                        fontSize: Fonts.fontSize18,
                        fontFamily: Fonts.fontNunito,
                        fontWeight: Fonts.f700,
                      ),
                    ),
                  ),

                  //Past
                  Container(
                    margin: edge_insets_t_32,
                    width: double.infinity,
                    child: const Text(
                      'Past',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: Fonts.fontSize36,
                        fontFamily: Fonts.fontNunito,
                        fontWeight: Fonts.f400,
                      ),
                    ),
                  ),

                  //Past short card
                  Container(
                    margin: edge_insets_16,
                    decoration: BoxDecoration(borderRadius: radius.br_10, color: AppColors.grey2),
                    child: Column(
                      children: [
                        Container(
                          padding: edge_insets_16,
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
                                      'DAY 1',
                                      style: TextStyle(
                                        color: AppColors.textHeading,
                                        fontSize: Fonts.fontSize18,
                                        fontFamily: Fonts.fontNunito,
                                        fontWeight: Fonts.f700,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: edge_insets_t_8,
                                    child: const Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '1',
                                            style: TextStyle(
                                              color: AppColors.bgLightPurple,
                                              fontSize: Fonts.fontSize14,
                                              fontFamily: Fonts.fontNunito,
                                              fontWeight: Fonts.f700,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '/2 routine completed',
                                            style: TextStyle(
                                              color: AppColors.textGrey,
                                              fontSize: Fonts.fontSize12,
                                              fontFamily: Fonts.fontNunito,
                                              fontWeight: Fonts.f400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'images/coin.png',
                                    width: 24,
                                    height: 24,
                                  ),
                                  Container(
                                    margin: edge_insets_l_8,
                                    child: const Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '00',
                                            style: TextStyle(
                                              color: AppColors.textHeading,
                                              fontSize: Fonts.fontSize18,
                                              fontFamily: Fonts.fontNunito,
                                              fontWeight: Fonts.f700,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '/10 earned',
                                            style: TextStyle(
                                              color: AppColors.textGrey,
                                              fontSize: Fonts.fontSize18,
                                              fontFamily: Fonts.fontNunito,
                                              fontWeight: Fonts.f400,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.right,
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

                  //Past Extended card
                  Container(
                    margin: edge_insets_16,
                    decoration: BoxDecoration(borderRadius: radius.br_10, color: AppColors.grey2),
                    child: Column(
                      children: [
                        Container(
                          padding: edge_insets_16,
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
                                      'DAY 1',
                                      style: TextStyle(
                                        color: AppColors.textHeading,
                                        fontSize: Fonts.fontSize18,
                                        fontFamily: Fonts.fontNunito,
                                        fontWeight: Fonts.f700,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: edge_insets_t_8,
                                    child: const Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '1',
                                            style: TextStyle(
                                              color: AppColors.bgLightPurple,
                                              fontSize: Fonts.fontSize14,
                                              fontFamily: Fonts.fontNunito,
                                              fontWeight: Fonts.f700,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '/2 routine completed',
                                            style: TextStyle(
                                              color: AppColors.textGrey,
                                              fontSize: Fonts.fontSize12,
                                              fontFamily: Fonts.fontNunito,
                                              fontWeight: Fonts.f400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'images/coin.png',
                                    width: 24,
                                    height: 24,
                                  ),
                                  Container(
                                    margin: edge_insets_l_8,
                                    child: const Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '00',
                                            style: TextStyle(
                                              color: AppColors.textHeading,
                                              fontSize: Fonts.fontSize18,
                                              fontFamily: Fonts.fontNunito,
                                              fontWeight: Fonts.f700,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '/10 earned',
                                            style: TextStyle(
                                              color: AppColors.textGrey,
                                              fontSize: Fonts.fontSize18,
                                              fontFamily: Fonts.fontNunito,
                                              fontWeight: Fonts.f400,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            border: Border(
                                top: BorderSide(color: AppColors.grey4, width: 1)),
                          ),
                          padding: edge_insets_16,
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    padding: edge_insets_l_10,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: const Text(
                                                'Morning routine',
                                                style: TextStyle(
                                                  color: AppColors.textHeading,
                                                  fontSize: Fonts.fontSize18,
                                                  fontFamily: Fonts.fontNunito,
                                                  fontWeight: Fonts.f400,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: edge_insets_t_8,
                                              child: Row(
                                                children: [
                                                  const Icon(
                                                    Icons.av_timer,
                                                    color: AppColors.textGrey,
                                                    size: 16,
                                                  ),
                                                  Container(
                                                    margin: edge_insets_l_4,
                                                    child: const Text(
                                                      '20 min',
                                                      style: TextStyle(
                                                        color: AppColors.textGrey,
                                                        fontSize: Fonts.fontSize12,
                                                        fontFamily: Fonts.fontNunito,
                                                        fontWeight: Fonts.f400,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: edge_insets_x_8,
                                                    width: 4,
                                                    height: 4,
                                                    decoration: const ShapeDecoration(
                                                      color: AppColors.grey4,
                                                      shape: OvalBorder(),
                                                    ),
                                                  ),
                                                  Image.asset(
                                                    'images/coin.png',
                                                    width: 16,
                                                    height: 16,
                                                  ),
                                                  Container(
                                                    margin: edge_insets_l_4,
                                                    child: const Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Text(
                                                          '05 coins earned',
                                                          style: TextStyle(
                                                            color: AppColors.textGrey,
                                                            fontSize: Fonts.fontSize12,
                                                            fontFamily: Fonts.fontNunito,
                                                            fontWeight: Fonts.f400,
                                                          ),
                                                        ),
                                                        // Icon(
                                                        //   Icons.check,
                                                        //   color: COLOR_GREEN,
                                                        //   size: 12,
                                                        // )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        OutlinedButton(
                                          onPressed: () {},
                                          style: OutlinedButton.styleFrom(
                                              padding: edge_insets_10,
                                              side: const BorderSide(
                                                  color: AppColors.bgPrimary
                                              )
                                          ),
                                          child: const Text(
                                            'Check history',
                                            style: TextStyle(
                                              color: AppColors.bgPrimary,
                                              fontSize: Fonts.fontSize14,
                                              fontFamily: Fonts.fontNunito,
                                              fontWeight: Fonts.f700,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: edge_insets_y_16,
                                    decoration: BoxDecoration(
                                      border: borders.bb_1px_white,
                                    ),
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
                                                fontWeight: Fonts.f400,
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin: edge_insets_t_16,
                                    padding: edge_insets_l_10,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: const Text(
                                                'Evening routine',
                                                style: TextStyle(
                                                  color: AppColors.textHeading,
                                                  fontSize: Fonts.fontSize18,
                                                  fontFamily: Fonts.fontNunito,
                                                  fontWeight: Fonts.f400,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: edge_insets_t_8,
                                              child: Row(
                                                children: [
                                                  const Icon(
                                                    Icons.av_timer,
                                                    color: AppColors.textGrey,
                                                    size: 16,
                                                  ),
                                                  Container(
                                                    margin: edge_insets_l_4,
                                                    child: const Text(
                                                      '20 min',
                                                      style: TextStyle(
                                                        color: AppColors.textGrey,
                                                        fontSize: Fonts.fontSize12,
                                                        fontFamily: Fonts.fontNunito,
                                                        fontWeight: Fonts.f400,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: edge_insets_x_8,
                                                    width: 4,
                                                    height: 4,
                                                    decoration: const ShapeDecoration(
                                                      color: Color(0xFFB1B1B1),
                                                      shape: OvalBorder(),
                                                    ),
                                                  ),
                                                  Image.asset(
                                                    'images/coin.png',
                                                    width: 16,
                                                    height: 16,
                                                  ),
                                                  Container(
                                                    margin: edge_insets_l_4,
                                                    child: const Text(
                                                      '05 coins',
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
                                        OutlinedButton(
                                            onPressed: () {},
                                            style: OutlinedButton.styleFrom(
                                              padding: edge_insets_x_10,
                                              side: const BorderSide(color: AppColors.bgPrimary)
                                            ),
                                            child: const Text(
                                              'Check history',
                                              style: TextStyle(
                                                color: AppColors.bgPrimary,
                                                fontSize: Fonts.fontSize14,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f700,
                                              ),
                                            ))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: edge_insets_t_16,
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.close,
                                          size: 16,
                                          color: AppColors.textRed,
                                        ),
                                        Container(
                                          margin: edge_insets_l_8,
                                          child: const Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Not completed',
                                                  style: TextStyle(
                                                    color: AppColors.textRed,
                                                    fontSize: Fonts.fontSize14,
                                                    fontFamily: Fonts.fontNunito,
                                                    fontWeight: Fonts.f400,
                                                  ),
                                                ),
                                              ],
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
                  ),

                  // Future

                  Container(
                    margin: edge_insets_t_32,
                    width: double.infinity,
                    child: const Text(
                      'Future',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: Fonts.fontSize36,
                        fontFamily: Fonts.fontNunito,
                        fontWeight: Fonts.f400,
                      ),
                    ),
                  ),

                  //Future short card
                  Container(
                    margin: edge_insets_16,
                    decoration: BoxDecoration(
                      borderRadius: radius.br_10,
                      border: borders.b_1px_grey2,
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: edge_insets_16,
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
                                      'DAY 5',
                                      style: TextStyle(
                                        color: AppColors.textHeading,
                                        fontSize: Fonts.fontSize18,
                                        fontFamily: Fonts.fontNunito,
                                        fontWeight: Fonts.f700,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: edge_insets_t_8,
                                    child: const Text(
                                      'Not started',
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
                              Row(
                                children: [
                                  Container(
                                    margin: edge_insets_r_8,
                                    child: const Text.rich(
                                      TextSpan(
                                        text: 'You will earn',
                                        style: TextStyle(
                                          color: AppColors.textGrey,
                                          fontSize: Fonts.fontSize18,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f400,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Image.asset(
                                    'images/coin.png',
                                    width: 24,
                                    height: 24,
                                  ),
                                  Container(
                                    margin: edge_insets_l_8,
                                    child: const Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '04',
                                            style: TextStyle(
                                              color: AppColors.textHeading,
                                              fontSize: Fonts.fontSize18,
                                              fontFamily: Fonts.fontNunito,
                                              fontWeight: Fonts.f700,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.right,
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

                  //Expansion panel

                  // Future extended card
                  Container(
                    margin: edge_insets_16,
                    decoration: ShapeDecoration(
                      color: AppColors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.50, color: AppColors.grey2),
                        borderRadius: radius.br_10,
                      ),
                      shadows: const [shadows.bs_primary],
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: edge_insets_16,
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
                                      'DAY 5',
                                      style: TextStyle(
                                        color: AppColors.textHeading,
                                        fontSize: Fonts.fontSize18,
                                        fontFamily: Fonts.fontNunito,
                                        fontWeight: Fonts.f700,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: edge_insets_t_8,
                                    child: const Text(
                                      'Not started',
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
                              Row(
                                children: [
                                  Container(
                                    margin: edge_insets_r_8,
                                    child: const Text.rich(
                                      TextSpan(
                                        text: 'You will earn',
                                        style: TextStyle(
                                          color: AppColors.textGrey,
                                          fontSize: Fonts.fontSize18,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f400,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Image.asset(
                                    'images/coin.png',
                                    width: 24,
                                    height: 24,
                                  ),
                                  Container(
                                    margin: edge_insets_l_8,
                                    child: const Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '04',
                                            style: TextStyle(
                                              color: AppColors.textHeading,
                                              fontSize: Fonts.fontSize18,
                                              fontFamily: Fonts.fontNunito,
                                              fontWeight: Fonts.f700,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            border: Border(
                                top: BorderSide(color: AppColors.grey4, width: 1)),
                          ),
                          padding: edge_insets_16,
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: const Text(
                                            'Morning routine',
                                            style: TextStyle(
                                              color: AppColors.textHeading,
                                              fontSize: Fonts.fontSize18,
                                              fontFamily: Fonts.fontNunito,
                                              fontWeight: Fonts.f400,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: edge_insets_t_8,
                                          child: Row(
                                            children: [
                                              const Icon(
                                                Icons.av_timer,
                                                color: AppColors.textGrey,
                                                size: 16,
                                              ),
                                              Container(
                                                margin: edge_insets_l_4,
                                                child: const Text(
                                                  '20 min',
                                                  style: TextStyle(
                                                    color: AppColors.textGrey,
                                                    fontSize: Fonts.fontSize12,
                                                    fontFamily: Fonts.fontNunito,
                                                    fontWeight: Fonts.f400,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: edge_insets_x_8,
                                                width: 4,
                                                height: 4,
                                                decoration: const ShapeDecoration(
                                                  color: AppColors.grey4,
                                                  shape: OvalBorder(),
                                                ),
                                              ),
                                              Image.asset(
                                                'images/coin.png',
                                                width: 16,
                                                height: 16,
                                              ),
                                              Container(
                                                margin: edge_insets_l_4,
                                                child: const Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '05 coins',
                                                      style: TextStyle(
                                                        color: AppColors.textGrey,
                                                        fontSize: Fonts.fontSize12,
                                                        fontFamily: Fonts.fontNunito,
                                                        fontWeight: Fonts.f400,
                                                      ),
                                                    ),
                                                    // Icon(
                                                    //   Icons.check,
                                                    //   color: COLOR_GREEN,
                                                    //   size: 12,
                                                    // )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    OutlinedButton(
                                      onPressed: () {},
                                      style: OutlinedButton.styleFrom(
                                        side: const BorderSide(color: AppColors.bgPrimary)
                                      ),
                                      child: const Text(
                                        'See details',
                                        style: TextStyle(
                                          color: AppColors.bgPrimary,
                                          fontSize: Fonts.fontSize14,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f700,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: edge_insets_t_16,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: const Text(
                                            'Evening routine',
                                            style: TextStyle(
                                              color: AppColors.textHeading,
                                              fontSize: Fonts.fontSize18,
                                              fontFamily: Fonts.fontNunito,
                                              fontWeight: Fonts.f400,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: edge_insets_t_8,
                                          child: Row(
                                            children: [
                                              const Icon(
                                                Icons.av_timer,
                                                color: AppColors.textGrey,
                                                size: 16,
                                              ),
                                              Container(
                                                margin: edge_insets_l_4,
                                                child: const Text(
                                                  '20 min',
                                                  style: TextStyle(
                                                    color: AppColors.textGrey,
                                                    fontSize: Fonts.fontSize12,
                                                    fontFamily: Fonts.fontNunito,
                                                    fontWeight: Fonts.f400,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: edge_insets_x_8,
                                                width: 4,
                                                height: 4,
                                                decoration: const ShapeDecoration(
                                                  color: AppColors.grey4,
                                                  shape: OvalBorder(),
                                                ),
                                              ),
                                              Image.asset(
                                                'images/coin.png',
                                                width: 16,
                                                height: 16,
                                              ),
                                              Container(
                                                margin: edge_insets_l_4,
                                                child: const Text(
                                                  '05 coins',
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
                                    OutlinedButton(
                                        onPressed: () {},
                                        style: OutlinedButton.styleFrom(
                                          side: const BorderSide(
                                            color: AppColors.bgPrimary
                                          )
                                        ),
                                        child: const Text(
                                          'See details',
                                          style: TextStyle(
                                            color: AppColors.bgPrimary,
                                            fontSize: Fonts.fontSize14,
                                            fontFamily: Fonts.fontNunito,
                                            fontWeight: Fonts.f700,
                                          ),
                                        ))
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
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  PlansPlanHomePastFutureScreenCubit createCubitAndAssignToController(BuildContext context) {
    PlansPlanHomePastFutureScreenCubit plansPlanHomePastFutureScreenCubit =
        PlansPlanHomePastFutureScreenCubit();
    controller?.cubit = plansPlanHomePastFutureScreenCubit;
    return plansPlanHomePastFutureScreenCubit;
  }

}
