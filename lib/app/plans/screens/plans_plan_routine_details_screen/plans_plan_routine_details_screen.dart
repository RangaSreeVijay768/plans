import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans_plan_routine_details_screen/plans_plan_routine_details_screen_controller.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans_plan_routine_details_screen/plans_plan_routine_details_screen_cubit.dart';
import 'package:beebloom_water_tracker/app/styles/borders.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../themes/app_colors.dart';
import '../../widgets/plans_my_plans_how_to_do_modal_widget/plans_my_plans_how_to_do_modal_widget.dart';
import '../../widgets/plans_payment_options_modal_widget/plans_payment_options_modal_widget.dart';

class PlansPlanRoutineDetailsScreen extends BaseStatelessWidget<PlansPlanRoutineDetailsScreenController, PlansPlanRoutineDetailsScreenCubit>{
  const PlansPlanRoutineDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlansPlanRoutineDetailsScreenCubit>(
        create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<PlansPlanRoutineDetailsScreenCubit, PlansPlanRoutineDetailsScreenState>(
        listener: (context, state){},
        builder: (context, state){
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'Morning Skin care routine',
                style: TextStyle(
                  fontSize: Fonts.fontSize18,
                  fontFamily: Fonts.fontNunito,
                  fontWeight: Fonts.f700,
                ),
              ),
            ),
            body: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: edge_insets_x_16_y_32,
                      padding: edge_insets_16,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF0ECF1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      child: const Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.access_time, size: 25, color: AppColors.bgPrimary),
                              SizedBox(
                                width: 16,
                              ),
                              Text(
                                '20 min',
                                style: TextStyle(
                                  color: Color(0xFF2D2D2D),
                                  fontSize: 18,
                                  fontFamily: Fonts.fontNunito,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus aliquamar arcu ele...',
                            style: TextStyle(
                              fontSize: Fonts.fontSize14,
                              fontFamily: Fonts.fontNunito,
                              fontWeight: Fonts.f400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: edge_insets_x_16,
                      alignment: Alignment.topLeft,
                      child: const Text(
                        'Steps included',
                        style: TextStyle(
                          fontSize: Fonts.fontSize18,
                          fontFamily: Fonts.fontNunito,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      margin: edge_insets_x_16,
                      padding: edge_insets_t_24,
                      decoration: BoxDecoration(
                        border: borders.bb_1px_grey2
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    'images/plan_routine_details_img.png',
                                    height: 90,
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    children: [
                                      Text(
                                        'Step 1 :',
                                        style: TextStyle(
                                          color: AppColors.textGrey,
                                          fontSize: Fonts.fontSize14,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f400,
                                        ),
                                      ),
                                      Text(
                                        'Cleansing',
                                        style: TextStyle(
                                          fontSize: Fonts.fontSize14,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f700,
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        'Remove germs, dirt, makeup, and\nirritation from your skin.',
                                        style: TextStyle(
                                          fontSize: Fonts.fontSize14,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.access_time,
                                        size: 17,
                                        color: AppColors.bgPrimary,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        '60 sec',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  OutlinedButton(
                                    onPressed: () {
                                      showModalBottomSheet(
                                        isScrollControlled: true,
                                        context: context,
                                        builder: (BuildContext context) {
                                          return const MyPlansHowToDoModal();
                                        },
                                      );
                                    },
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: AppColors.grey3,
                                      // Set the button background color
                                      side: const BorderSide(color: AppColors.bgPrimary), // Set the border color
                                    ),
                                    child: const Text(
                                      'How to do',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColors.bgPrimary,
                                        fontSize: Fonts.fontSize14,
                                        fontFamily: Fonts.fontNunito,
                                        fontWeight: Fonts.f700,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 16,)
                        ],
                      ),
                    ),
                    Container(
                      margin: edge_insets_x_16,
                      padding: edge_insets_t_24,
                      decoration: BoxDecoration(
                          border: borders.bb_1px_grey2
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    'images/plan_routine_details_img.png',
                                    height: 90,
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    children: [
                                      Text(
                                        'Step 1 :',
                                        style: TextStyle(
                                          color: AppColors.textGrey,
                                          fontSize: Fonts.fontSize14,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f400,
                                        ),
                                      ),
                                      Text(
                                        'Cleansing',
                                        style: TextStyle(
                                          fontSize: Fonts.fontSize14,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f700,
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        'Remove germs, dirt, makeup, and\nirritation from your skin.',
                                        style: TextStyle(
                                          fontSize: Fonts.fontSize14,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.access_time,
                                        size: 17,
                                        color: AppColors.bgPrimary,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        '60 sec',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  OutlinedButton(
                                    onPressed: () {
                                      showModalBottomSheet(
                                        isScrollControlled: true,
                                        context: context,
                                        builder: (BuildContext context) {
                                          return const MyPlansHowToDoModal();
                                        },
                                      );
                                    },
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: AppColors.grey3,
                                      // Set the button background color
                                      side: const BorderSide(color: AppColors.bgPrimary), // Set the border color
                                    ),
                                    child: const Text(
                                      'How to do',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColors.bgPrimary,
                                        fontSize: Fonts.fontSize14,
                                        fontFamily: Fonts.fontNunito,
                                        fontWeight: Fonts.f700,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 16,)
                        ],
                      ),
                    ),
                    Container(
                      margin: edge_insets_x_16,
                      padding: edge_insets_t_24,
                      decoration: BoxDecoration(
                          border: borders.bb_1px_grey2
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    'images/plan_routine_details_img.png',
                                    height: 90,
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    children: [
                                      Text(
                                        'Step 1 :',
                                        style: TextStyle(
                                          color: AppColors.textGrey,
                                          fontSize: Fonts.fontSize14,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f400,
                                        ),
                                      ),
                                      Text(
                                        'Cleansing',
                                        style: TextStyle(
                                          fontSize: Fonts.fontSize14,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f700,
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        'Remove germs, dirt, makeup, and\nirritation from your skin.',
                                        style: TextStyle(
                                          fontSize: Fonts.fontSize14,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.access_time,
                                        size: 17,
                                        color: AppColors.bgPrimary,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        '60 sec',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  OutlinedButton(
                                    onPressed: () {
                                      showModalBottomSheet(
                                        isScrollControlled: true,
                                        context: context,
                                        builder: (BuildContext context) {
                                          return const MyPlansHowToDoModal();
                                        },
                                      );
                                    },
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: AppColors.grey3,
                                      // Set the button background color
                                      side: const BorderSide(color: AppColors.bgPrimary), // Set the border color
                                    ),
                                    child: const Text(
                                      'How to do',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColors.bgPrimary,
                                        fontSize: Fonts.fontSize14,
                                        fontFamily: Fonts.fontNunito,
                                        fontWeight: Fonts.f700,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 16,)
                        ],
                      ),
                    ),
                    Container(
                      margin: edge_insets_x_16,
                      padding: edge_insets_t_24,
                      decoration: BoxDecoration(
                          border: borders.bb_1px_grey2
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    'images/plan_routine_details_img.png',
                                    height: 90,
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    children: [
                                      Text(
                                        'Step 1 :',
                                        style: TextStyle(
                                          color: AppColors.textGrey,
                                          fontSize: Fonts.fontSize14,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f400,
                                        ),
                                      ),
                                      Text(
                                        'Cleansing',
                                        style: TextStyle(
                                          fontSize: Fonts.fontSize14,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f700,
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        'Remove germs, dirt, makeup, and\nirritation from your skin.',
                                        style: TextStyle(
                                          fontSize: Fonts.fontSize14,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.access_time,
                                        size: 17,
                                        color: AppColors.bgPrimary,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        '60 sec',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  OutlinedButton(
                                    onPressed: () {
                                      showModalBottomSheet(
                                        isScrollControlled: true,
                                        context: context,
                                        builder: (BuildContext context) {
                                          return const MyPlansHowToDoModal();
                                        },
                                      );
                                    },
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: AppColors.grey3,
                                      // Set the button background color
                                      side: const BorderSide(color: AppColors.bgPrimary), // Set the border color
                                    ),
                                    child: const Text(
                                      'How to do',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColors.bgPrimary,
                                        fontSize: Fonts.fontSize14,
                                        fontFamily: Fonts.fontNunito,
                                        fontWeight: Fonts.f700,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 16,)
                        ],
                      ),
                    ),

                  ],
                )),
            bottomNavigationBar: BottomAppBar(
              padding: edge_insets_24,
              height: 102,
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
                            '₹ ',
                            style: TextStyle(
                              fontSize: Fonts.fontSize24,
                              fontFamily: Fonts.fontLato,
                              fontWeight: Fonts.f700,
                            ),
                          ),
                          Text(
                            '20',
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
                  const Column(
                    children: [
                      PlansPaymentOptionsModalWidget()
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  PlansPlanRoutineDetailsScreenCubit createCubitAndAssignToController(BuildContext context) {
    PlansPlanRoutineDetailsScreenCubit plansPlanRoutineDetailsScreenCubit =
        PlansPlanRoutineDetailsScreenCubit();
    controller?.cubit = plansPlanRoutineDetailsScreenCubit;
    return plansPlanRoutineDetailsScreenCubit;
  }

}
