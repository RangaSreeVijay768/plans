import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans_plan_details_screen/plans_plan_details_screen_controller.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans_plan_details_screen/plans_plan_details_screen_cubit.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans_plan_routine_details_screen/plans_plan_routine_details_screen.dart';
import 'package:beebloom_water_tracker/app/styles/borders.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../themes/app_colors.dart';
import '../../widgets/plans_payment_options_modal_widget/plans_payment_options_modal_widget.dart';


class PlansPlanDetailsScreen extends BaseStatelessWidget<PlansPlanDetailsScreenController, PlansPlanDetailsScreenCubit>{
  const PlansPlanDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlansPlanDetailsScreenCubit>(
        create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<PlansPlanDetailsScreenCubit, PlansPlanDetailsScreenState>(
        listener: (context, state){},
        builder: (context, state){
          return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              title: Text(''),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      'images/plan_details_img.png',
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                      padding: edge_insets_x_16,
                      child: Container(
                        child: const Text(
                          'Dry skin care routine Dry skin care routine',
                          style: TextStyle(
                            fontSize: Fonts.fontSize24,
                            fontFamily: Fonts.fontNunito,
                            fontWeight: Fonts.f400,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 18, bottom: 18),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.grey,
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.grey,
                          ),
                          Text(
                            '4.8',
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize: Fonts.fontSize12,
                              fontFamily: Fonts.fontNunito,
                              fontWeight: Fonts.f700,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      padding: edge_insets_x_16,
                      margin: edge_insets_b_16,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: AppColors.primary,
                                      // Set the background color here
                                      shape: BoxShape.circle,
                                    ),
                                    padding: edge_insets_5,
                                    child: const Icon(
                                      Icons.calendar_today,
                                      color: AppColors.white,
                                      size: 22,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    '21-days ',
                                    style: TextStyle(
                                      color: AppColors.textGrey,
                                      fontSize: Fonts.fontSize18,
                                      fontFamily: Fonts.fontNunito,
                                      fontWeight: Fonts.f400,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: AppColors.primary,
                                      // Set the background color here
                                      shape: BoxShape.circle,
                                    ),
                                    padding: edge_insets_5,
                                    child: const Icon(
                                      Icons.av_timer,
                                      color: AppColors.white,
                                      size: 22,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    '21-days ',
                                    style: TextStyle(
                                      color: AppColors.textGrey,
                                      fontSize: Fonts.fontSize18,
                                      fontFamily: Fonts.fontNunito,
                                      fontWeight: Fonts.f400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: AppColors.primary,
                                      // Set the background color here
                                      shape: BoxShape.circle,
                                    ),
                                    padding: edge_insets_5,
                                    child: const Icon(
                                      Icons.restart_alt,
                                      color: AppColors.white,
                                      size: 22,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    '21-days ',
                                    style: TextStyle(
                                      color: AppColors.textGrey,
                                      fontSize: Fonts.fontSize18,
                                      fontFamily: Fonts.fontNunito,
                                      fontWeight: Fonts.f400,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: AppColors.primary,
                                      // Set the background color here
                                      shape: BoxShape.circle,
                                    ),
                                    padding: edge_insets_5,
                                    child: const Icon(
                                      Icons.home,
                                      color: AppColors.white,
                                      size: 22,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    '21-days ',
                                    style: TextStyle(
                                      color: AppColors.textGrey,
                                      fontSize: Fonts.fontSize18,
                                      fontFamily: Fonts.fontNunito,
                                      fontWeight: Fonts.f400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      margin: edge_insets_x_16,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.5,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: AppColors.grey2,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      padding: edge_insets_x_16,
                      margin: edge_insets_b_16,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: AppColors.primary,
                              // Set the background color here
                              shape: BoxShape.circle,
                            ),
                            padding: edge_insets_5,
                            child: const Icon(
                              Icons.calendar_today,
                              color: AppColors.white,
                              size: 22,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Earn',
                            style: TextStyle(
                              color: AppColors.textGrey,
                              fontSize: Fonts.fontSize14,
                              fontFamily: Fonts.fontNunito,
                              fontWeight: Fonts.f400,
                            ),
                          ),
                          Image.asset(
                            'images/coin.png',
                            width: 16,
                          ),
                          const Text(
                            '120 coins',
                            style: TextStyle(
                              fontSize: Fonts.fontSize14,
                              fontFamily: Fonts.fontNunito,
                              fontWeight: Fonts.f400,
                            ),
                          ),
                          const Text(
                            'after finishing this plan',
                            style: TextStyle(
                              color: AppColors.textGrey,
                              fontSize: Fonts.fontSize14,
                              fontFamily: Fonts.fontNunito,
                              fontWeight: Fonts.f400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.5,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: AppColors.grey2,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 18),
                        height: 35, // Adjust the height as needed
                        child: ListView(scrollDirection: Axis.horizontal, children: [
                          OutlinedButton(
                            onPressed: () {
                              // Add your button click logic here
                            },
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                  color: AppColors.primary), // Set the border color
                            ),
                            child: const Text(
                              'expected results',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.primary,
                                fontSize: Fonts.fontSize14,
                                fontFamily: Fonts.fontNunito,
                                fontWeight: Fonts.f400,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          OutlinedButton(
                            onPressed: () {
                              // Add your button click logic here
                            },
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                  color: AppColors.textGrey), // Set the border color
                            ),
                            child: const Text(
                              'whom this is for',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.textGrey,
                                fontSize: Fonts.fontSize14,
                                fontFamily: Fonts.fontNunito,
                                fontWeight: Fonts.f400,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          OutlinedButton(
                            onPressed: () {
                              // Add your button click logic here
                            },
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                  color: AppColors.textGrey), // Set the border color
                            ),
                            child: const Text(
                              'inside the package',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.textGrey,
                                fontSize: Fonts.fontSize14,
                                fontFamily: Fonts.fontNunito,
                                fontWeight: Fonts.f400,
                              ),
                            ),
                          )
                        ])),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      margin: edge_insets_x_16,
                      padding: edge_insets_10,
                      decoration: ShapeDecoration(
                        color: AppColors.grey3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.done_all,
                                color: AppColors.bgPrimary,
                                size: 22,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Become an expert in managing your dry skin.',
                                style: TextStyle(
                                  fontSize: Fonts.fontSize14,
                                  fontFamily: Fonts.fontNunito,
                                  fontWeight: Fonts.f400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.done_all,
                                color: AppColors.bgPrimary,
                                size: 22,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Experience rejuvenated skin.',
                                style: TextStyle(
                                  color: Color(0xFF2D2D2D),
                                  fontSize: Fonts.fontSize14,
                                  fontFamily: Fonts.fontNunito,
                                  fontWeight: Fonts.f400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.done_all,
                                color: AppColors.bgPrimary,
                                size: 22,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Experience rejuvenated skin.',
                                style: TextStyle(
                                  color: Color(0xFF2D2D2D),
                                  fontSize: Fonts.fontSize14,
                                  fontFamily: Fonts.fontNunito,
                                  fontWeight: Fonts.f400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.done_all,
                                color: AppColors.bgPrimary,
                                size: 22,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Experience rejuvenated skin.',
                                style: TextStyle(
                                  color: Color(0xFF2D2D2D),
                                  fontSize: Fonts.fontSize14,
                                  fontFamily: Fonts.fontNunito,
                                  fontWeight: Fonts.f400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      padding: edge_insets_x_16,
                      margin: edge_insets_t_24,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(
                                'The perfect leg workout',
                                style: TextStyle(
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
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      padding: edge_insets_y_10,
                      margin: edge_insets_x_16,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: radius.br_10,
                        ),
                        shadows: const [
                          BoxShadow(
                            color: AppColors.grey4,
                            blurRadius: 12,
                            offset: Offset(0, 0),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: edge_insets_x_10,
                            margin: edge_insets_t_10,
                            child: const Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Day 1',
                                      style: TextStyle(
                                        fontSize: Fonts.fontSize18,
                                        fontFamily: Fonts.fontNunito,
                                        fontWeight: Fonts.f400,
                                      ),
                                    ),
                                    Icon(
                                      Icons.lock_open,
                                      color: AppColors.green,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 0.50,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: AppColors.grey2,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: edge_insets_x_10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Morning routine',
                                      style: TextStyle(
                                        fontSize: Fonts.fontSize14,
                                        fontFamily: Fonts.fontNunito,
                                        fontWeight: Fonts.f400,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.av_timer,
                                        ),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        const Text(
                                          '20 min',
                                          style: TextStyle(
                                            color: AppColors.textGrey,
                                            fontSize: Fonts.fontSize12,
                                            fontFamily: Fonts.fontNunito,
                                            fontWeight: Fonts.f400,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          width: 4,
                                          height: 4,
                                          decoration: const ShapeDecoration(
                                            color: AppColors.grey4,
                                            shape: OvalBorder(),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Image.asset(
                                          'images/coin.png',
                                          width: 16,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          '20 min',
                                          style: TextStyle(
                                            color: AppColors.textGrey,
                                            fontSize: Fonts.fontSize12,
                                            fontFamily: Fonts.fontNunito,
                                            fontWeight: Fonts.f400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                OutlinedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const PlansPlanRoutineDetailsScreen()),
                                    );
                                  },
                                  style: OutlinedButton.styleFrom(
                                    side: const BorderSide(
                                        color: AppColors.bgPrimary), // Set the border color
                                  ),
                                  child: const Text(
                                    'See details',
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
                          Container(
                            padding: edge_insets_x_10,
                            margin: edge_insets_t_10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Evening routine',
                                      style: TextStyle(
                                        fontSize: Fonts.fontSize14,
                                        fontFamily: Fonts.fontNunito,
                                        fontWeight: Fonts.f400,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.av_timer,
                                        ),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        const Text(
                                          '20 min',
                                          style: TextStyle(
                                            color: AppColors.textGrey,
                                            fontSize: Fonts.fontSize12,
                                            fontFamily: Fonts.fontNunito,
                                            fontWeight: Fonts.f400,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          width: 4,
                                          height: 4,
                                          decoration: const ShapeDecoration(
                                            color: AppColors.grey4,
                                            shape: OvalBorder(),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Image.asset(
                                          'images/coin.png',
                                          width: 16,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          '20 min',
                                          style: TextStyle(
                                            color: AppColors.textGrey,
                                            fontSize: Fonts.fontSize12,
                                            fontFamily: Fonts.fontNunito,
                                            fontWeight: Fonts.f400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                OutlinedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const PlansPlanRoutineDetailsScreen()),
                                    );
                                  },
                                  style: OutlinedButton.styleFrom(
                                    side: const BorderSide(
                                        color: AppColors.bgPrimary), // Set the border color
                                  ),
                                  child: const Text(
                                    'See details',
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
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      padding: edge_insets_x_16_y_12,
                      margin: edge_insets_x_16,
                      decoration: ShapeDecoration(
                        color: AppColors.grey2,
                        shape: RoundedRectangleBorder(
                            borderRadius: radius.br_5),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Day 2',
                            style: TextStyle(
                              color: AppColors.grey4,
                              fontSize: Fonts.fontSize18,
                              fontFamily: Fonts.fontNunito,
                              fontWeight: Fonts.f400,
                            ),
                          ),
                          Icon(
                            Icons.lock,
                            size: 29,
                            color: AppColors.grey4,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      padding: edge_insets_x_16_y_12,
                      margin: edge_insets_x_16,
                      decoration: ShapeDecoration(
                        color: AppColors.grey2,
                        shape: RoundedRectangleBorder(
                            borderRadius: radius.br_5),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Day 3',
                            style: TextStyle(
                              color: AppColors.grey4,
                              fontSize: Fonts.fontSize18,
                              fontFamily: Fonts.fontNunito,
                              fontWeight: Fonts.f400,
                            ),
                          ),
                          Icon(
                            Icons.lock,
                            size: 29,
                            color: AppColors.grey4,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      padding: edge_insets_x_16_y_12,
                      margin: edge_insets_x_16,
                      decoration: ShapeDecoration(
                        color: AppColors.grey2,
                        shape: RoundedRectangleBorder(
                            borderRadius: radius.br_5),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Day 4',
                            style: TextStyle(
                              color: AppColors.grey4,
                              fontSize: Fonts.fontSize18,
                              fontFamily: Fonts.fontNunito,
                              fontWeight: Fonts.f400,
                            ),
                          ),
                          Icon(
                            Icons.lock,
                            size: 29,
                            color: AppColors.grey4,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      padding: edge_insets_x_16_y_12,
                      margin: edge_insets_x_16,
                      decoration: ShapeDecoration(
                        color: AppColors.grey2,
                        shape: RoundedRectangleBorder(
                            borderRadius: radius.br_5),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Day 5',
                            style: TextStyle(
                              color: AppColors.grey4,
                              fontSize: Fonts.fontSize18,
                              fontFamily: Fonts.fontNunito,
                              fontWeight: Fonts.f400,
                            ),
                          ),
                          Icon(
                            Icons.lock,
                            size: 29,
                            color: AppColors.grey4,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      padding: edge_insets_x_16_y_12,
                      margin: edge_insets_x_16,
                      decoration: ShapeDecoration(
                        color: AppColors.grey2,
                        shape: RoundedRectangleBorder(
                            borderRadius: radius.br_5),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Day 6',
                            style: TextStyle(
                              color: AppColors.grey4,
                              fontSize: Fonts.fontSize18,
                              fontFamily: Fonts.fontNunito,
                              fontWeight: Fonts.f400,
                            ),
                          ),
                          Icon(
                            Icons.lock,
                            size: 29,
                            color: AppColors.grey4,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                )),
            bottomNavigationBar: BottomAppBar(
                padding: edge_insets_x_24_y_16,
                height: 100,
                surfaceTintColor: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Text(
                              '₹ 20',
                              style: TextStyle(
                                fontSize: Fonts.fontSize24,
                                fontFamily: Fonts.fontNunito,
                                fontWeight: Fonts.f700,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '150',
                              style: TextStyle(
                                color: AppColors.grey4,
                                fontSize: Fonts.fontSize14,
                                fontFamily: Fonts.fontNunito,
                                fontWeight: Fonts.f400,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'Or pay using ',
                              style: TextStyle(
                                color: AppColors.green,
                                fontSize: Fonts.fontSize14,
                                fontFamily: Fonts.fontNunito,
                                fontWeight: Fonts.f400,
                              ),
                            ),
                            Image.asset(
                              'images/coin.png',
                              height: 17,
                            ),
                            const Text(
                              ' 199',
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
                    const PlansPaymentOptionsModalWidget()
                  ],
                )),
          );
        },
      ),
    );
  }

  @override
  PlansPlanDetailsScreenCubit createCubitAndAssignToController(BuildContext context) {
    PlansPlanDetailsScreenCubit plansPlanDetailsScreenCubit =
        PlansPlanDetailsScreenCubit();
    controller?.cubit = plansPlanDetailsScreenCubit;
    return plansPlanDetailsScreenCubit;
  }

}
