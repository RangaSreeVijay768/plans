import 'package:beebloom_water_tracker/app/plans/screens/plans_plan_home_past_future_screen/plans_plan_home_past_future_screen.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans_plan_home_present_screen/plans_plan_home_present_screen_controller.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans_plan_home_present_screen/plans_plan_home_present_screen_cubit.dart';
import 'package:beebloom_water_tracker/app/plans/widgets/plans_add_notification_time_modal_widget/plans_add_notification_time_modal_widget.dart';
import 'package:beebloom_water_tracker/app/themes/shadows.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widgets/base_stateless_widget.dart';
import '../../../styles/borders.dart';
import '../../../themes/app_colors.dart';
import '../../../styles/edge_insets.dart';
import '../../../themes/fonts.dart';

class PlansPlanHomePresentScreen extends BaseStatelessWidget<PlansPlanHomePresentScreenController, PlansPlanHomePresentScreenCubit>{
  const PlansPlanHomePresentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlansPlanHomePresentScreenCubit>(
        create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<PlansPlanHomePresentScreenCubit, PlansPlanHomePresentScreenState>(
        listener: (context, state){},
        builder: (context, state){
          double screenWidth = MediaQuery.of(context).size.width;
          return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: SingleChildScrollView(
              child: Column(
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
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PlansPlanHomePastFutureScreen()));
                      },
                      child: const Text('Past Future Screen')),
                  Container(
                    padding: edge_insets_x_16,
                    child: Container(
                      width: double.infinity,
                      margin: edge_insets_t_40,
                      padding: edge_insets_x_16_y_20,
                      decoration: ShapeDecoration(
                        color: AppColors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: const [
                          shadows.bs_primary
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: edge_insets_10,
                                margin: edge_insets_r_8,
                                decoration: const BoxDecoration(
                                  color: AppColors.bgPrimary,
                                  shape: BoxShape.circle
                                ),
                                child: Image.asset(
                                  'images/notifications_off_outline.png',
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                              const Text(
                                'Setup reminder to earn \ncoins earlier than others',
                                style: TextStyle(
                                  fontSize: Fonts.fontSize14,
                                  fontFamily: Fonts.fontNunito,
                                  fontWeight: Fonts.f400,
                                ),
                              ),
                            ],
                          ),

                          //Setup Button
                          OutlinedButton(
                            onPressed: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                builder: (BuildContext context) {
                                  return PlansAddNotificationTimeModalWidget();
                                },
                              );
                            },
                            style: OutlinedButton.styleFrom(
                              padding: edge_insets_x_24_y_5,
                              backgroundColor: AppColors.grey3,
                            ),
                            child: const Text(
                              'Setup',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.bgPrimary,
                                fontSize: Fonts.fontSize14,
                                fontFamily: Fonts.fontNunito,
                                fontWeight: Fonts.f700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    margin: edge_insets_16,
                    padding: edge_insets_16,
                    decoration: ShapeDecoration(
                      color: AppColors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: radius.br_10,
                      ),
                      shadows: const [
                        shadows.bs_primary
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
                                    text: 'Your notification is ',
                                    style: TextStyle(
                                      color: AppColors.textGrey,
                                      fontSize: Fonts.fontSize18,
                                      fontFamily: Fonts.fontNunito,
                                      fontWeight: Fonts.f400,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'ON',
                                    style: TextStyle(
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
                                  color: AppColors.bgPrimary,
                                  fontSize: Fonts.fontSize14,
                                  fontFamily: Fonts.fontNunito,
                                  fontWeight: Fonts.f700,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  Container(
                    margin: edge_insets_t_32,
                    padding: edge_insets_x_16,
                    child: const Text(
                      'Routine details',
                      style: TextStyle(
                        fontSize: Fonts.fontSize18,
                        fontFamily: Fonts.fontNunito,
                        fontWeight: Fonts.f700,
                      ),
                    ),
                  ),

                  //DAY 4 card
                  Container(
                    margin: edge_insets_16,
                    decoration:
                    BoxDecoration(borderRadius: radius.br_10, color: AppColors.bgPrimary),
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
                                      'DAY 4',
                                      style: TextStyle(
                                        color: AppColors.white,
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
                                            text: '0',
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
                                              color: AppColors.grey4,
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
                                              color: AppColors.white,
                                              fontSize: Fonts.fontSize18,
                                              fontFamily: Fonts.fontNunito,
                                              fontWeight: Fonts.f700,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '/10 earned',
                                            style: TextStyle(
                                              color: AppColors.grey4,
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
                          padding: edge_insets_16,
                          child: Column(
                            children: [
                              Container(
                                padding: edge_insets_x_10_y_16,
                                decoration: BoxDecoration(
                                  color: AppColors.bgBackgroundPurple,
                                  borderRadius: radius.br_10,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: const Text(
                                            'Morning routine',
                                            style: TextStyle(
                                              color: AppColors.white,
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
                                                color: AppColors.grey2,
                                                size: 16,
                                              ),
                                              Container(
                                                margin: edge_insets_l_4,
                                                child: const Text(
                                                  '20 min',
                                                  style: TextStyle(
                                                    color: AppColors.grey2,
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
                                                    color: AppColors.grey2,
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
                                    TextButton(
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                          backgroundColor: AppColors.white,
                                        ),
                                        child: Container(
                                          padding: edge_insets_x_4,
                                          child: const Text(
                                            'Start routine',
                                            style: TextStyle(
                                              color: AppColors.bgPrimary,
                                              fontSize: Fonts.fontSize14,
                                              fontFamily: Fonts.fontNunito,
                                              fontWeight: Fonts.f700,
                                            ),
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                              Container(
                                padding: edge_insets_y_16,
                                decoration: BoxDecoration(
                                  border: borders.bb_1px_backgroundPurple,
                                ),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.info_outline_rounded,
                                      size: 16,
                                      color: AppColors.bgLightPurple,
                                    ),
                                    Container(
                                      margin: edge_insets_l_8,
                                      child: const Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Finish before ',
                                              style: TextStyle(
                                                color: AppColors.bgLightPurple,
                                                fontSize: Fonts.fontSize14,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f400,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '11:30 am',
                                              style: TextStyle(
                                                color: AppColors.bgLightPurple,
                                                fontSize: Fonts.fontSize14,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f700,
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
                                              color: Colors.white,
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
                                                color: AppColors.grey2,
                                                size: 16,
                                              ),
                                              Container(
                                                margin: edge_insets_l_4,
                                                child: const Text(
                                                  '20 min',
                                                  style: TextStyle(
                                                    color: AppColors.grey2,
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
                                                    color: AppColors.grey2,
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
                                      style: OutlinedButton.styleFrom(),
                                      child: const Text(
                                        'See details',
                                        style: TextStyle(
                                          color: AppColors.white,
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
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.info_outline_rounded,
                                      size: 16,
                                      color: AppColors.bgLightPurple,
                                    ),
                                    Container(
                                      margin: edge_insets_l_8,
                                      child: const Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Start after ',
                                              style: TextStyle(
                                                color: AppColors.bgLightPurple,
                                                fontSize: Fonts.fontSize14,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f400,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '07:00 pm',
                                              style: TextStyle(
                                                color: AppColors.bgLightPurple,
                                                fontSize: Fonts.fontSize14,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f700,
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
                          ),
                        ),
                      ],
                    ),
                  ),
                  //DAY 4 card
                  Container(
                    margin: edge_insets_16,
                    decoration:
                    BoxDecoration(borderRadius: radius.br_10, color: AppColors.bgPrimary),
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
                                      'DAY 4',
                                      style: TextStyle(
                                        color: AppColors.white,
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
                                            text: '0',
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
                                              color: AppColors.grey4,
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
                                              color: AppColors.white,
                                              fontSize: Fonts.fontSize18,
                                              fontFamily: Fonts.fontNunito,
                                              fontWeight: Fonts.f700,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '/10 earned',
                                            style: TextStyle(
                                              color: AppColors.grey4,
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
                          padding: edge_insets_16,
                          child: Column(
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
                                              color: AppColors.white,
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
                                                color: AppColors.grey2,
                                                size: 16,
                                              ),
                                              Container(
                                                margin: edge_insets_l_4,
                                                child: const Text(
                                                  '20 min',
                                                  style: TextStyle(
                                                    color: AppColors.grey2,
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
                                                        color: AppColors.grey2,
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
                                        padding: edge_insets_10
                                      ),
                                      child: const Text(
                                        'Check history',
                                        style: TextStyle(
                                          color: AppColors.white,
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
                                  border: borders.bb_1px_backgroundPurple,
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
                              Container(
                                margin: edge_insets_t_16,
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
                                            'Evening routine',
                                            style: TextStyle(
                                              color: AppColors.white,
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
                                                color: AppColors.grey2,
                                                size: 16,
                                              ),
                                              Container(
                                                margin: edge_insets_l_4,
                                                child: const Text(
                                                  '20 min',
                                                  style: TextStyle(
                                                    color: AppColors.grey2,
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
                                                      '05 coins',
                                                      style: TextStyle(
                                                        color: AppColors.grey2,
                                                        fontSize: Fonts.fontSize12,
                                                        fontFamily: Fonts.fontNunito,
                                                        fontWeight: Fonts.f400,
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
                                    OutlinedButton(
                                      onPressed: () {},
                                      style: OutlinedButton.styleFrom(
                                          padding: edge_insets_x_18
                                      ),
                                      child: const Text(
                                        'See details',
                                        style: TextStyle(
                                          color: AppColors.white,
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
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.info_outline_rounded,
                                      size: 16,
                                      color: AppColors.bgLightPurple,
                                    ),
                                    Container(
                                      margin: edge_insets_l_8,
                                      child: const Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Start after ',
                                              style: TextStyle(
                                                color: AppColors.bgLightPurple,
                                                fontSize: Fonts.fontSize14,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f400,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '07:00 pm',
                                              style: TextStyle(
                                                color: AppColors.bgLightPurple,
                                                fontSize: Fonts.fontSize14,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f700,
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
                          ),
                        ),
                      ],
                    ),
                  ),
                  //DAY 4 card
                  Container(
                    margin: edge_insets_16,
                    decoration:
                    BoxDecoration(borderRadius: radius.br_10, color: AppColors.bgPrimary),
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
                                      'DAY 4',
                                      style: TextStyle(
                                        color: AppColors.white,
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
                                            text: '0',
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
                                              color: AppColors.grey4,
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
                                              color: AppColors.white,
                                              fontSize: Fonts.fontSize18,
                                              fontFamily: Fonts.fontNunito,
                                              fontWeight: Fonts.f700,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '/10 earned',
                                            style: TextStyle(
                                              color: AppColors.grey4,
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
                          padding: edge_insets_16,
                          child: Column(
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
                                              color: AppColors.white,
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
                                                color: AppColors.grey2,
                                                size: 16,
                                              ),
                                              Container(
                                                margin: edge_insets_l_4,
                                                child: const Text(
                                                  '20 min',
                                                  style: TextStyle(
                                                    color: AppColors.grey2,
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
                                                        color: AppColors.grey2,
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
                                          padding: edge_insets_x_18
                                      ),
                                      child: const Text(
                                        'See details',
                                        style: TextStyle(
                                          color: AppColors.white,
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
                                  border: borders.bb_1px_backgroundPurple,
                                ),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.info_outline_rounded,
                                      size: 16,
                                      color: AppColors.bgLightPurple,
                                    ),
                                    Container(
                                      margin: edge_insets_l_8,
                                      child: const Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Finish before ',
                                              style: TextStyle(
                                                color: AppColors.bgLightPurple,
                                                fontSize: Fonts.fontSize14,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f400,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '11:30 am',
                                              style: TextStyle(
                                                color: AppColors.bgLightPurple,
                                                fontSize: Fonts.fontSize14,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f700,
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
                                margin: edge_insets_t_16,
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
                                            'Evening routine',
                                            style: TextStyle(
                                              color: AppColors.white,
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
                                                color: AppColors.grey2,
                                                size: 16,
                                              ),
                                              Container(
                                                margin: edge_insets_l_4,
                                                child: const Text(
                                                  '20 min',
                                                  style: TextStyle(
                                                    color: AppColors.grey2,
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
                                                      '05 coins',
                                                      style: TextStyle(
                                                        color: AppColors.grey2,
                                                        fontSize: Fonts.fontSize12,
                                                        fontFamily: Fonts.fontNunito,
                                                        fontWeight: Fonts.f400,
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
                                    OutlinedButton(
                                      onPressed: () {},
                                      style: OutlinedButton.styleFrom(
                                          padding: edge_insets_x_18
                                      ),
                                      child: const Text(
                                        'See details',
                                        style: TextStyle(
                                          color: AppColors.white,
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
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.info_outline_rounded,
                                      size: 16,
                                      color: AppColors.bgLightPurple,
                                    ),
                                    Container(
                                      margin: edge_insets_l_8,
                                      child: const Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Start after ',
                                              style: TextStyle(
                                                color: AppColors.bgLightPurple,
                                                fontSize: Fonts.fontSize14,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f400,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '07:00 pm',
                                              style: TextStyle(
                                                color: AppColors.bgLightPurple,
                                                fontSize: Fonts.fontSize14,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f700,
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
  PlansPlanHomePresentScreenCubit createCubitAndAssignToController(BuildContext context) {
    PlansPlanHomePresentScreenCubit plansPlanHomePresentScreenCubit =
        PlansPlanHomePresentScreenCubit();
    controller?.cubit = plansPlanHomePresentScreenCubit;
    return plansPlanHomePresentScreenCubit;
  }

}
