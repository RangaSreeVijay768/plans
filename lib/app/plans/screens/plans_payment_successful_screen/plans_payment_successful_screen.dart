import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans_beecare_home_screen/plans_beecare_home_screen.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans_payment_successful_screen/plans_payment_successful_screen_controller.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans_payment_successful_screen/plans_payment_successful_screen_cubit.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../styles/borders.dart';
import '../../../themes/app_colors.dart';

class PlansPaymentSuccessfulScreen extends BaseStatelessWidget<PlansPaymentSuccessfulScreenController, PlansPaymentSuccessfulScreenCubit>{
  const PlansPaymentSuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlansPaymentSuccessfulScreenCubit>(
      create: (context)=> createCubitAndAssignToController(context),
      child: BlocConsumer<PlansPaymentSuccessfulScreenCubit, PlansPaymentSuccessfulScreenState>(
        listener: (context, state){},
        builder: (context, state){
          double screenHeight = MediaQuery.of(context).size.height;

          double screenWidth = MediaQuery.of(context).size.width;

          return Scaffold(
            body: Container(
              color: AppColors.white,
              width: screenWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/payment_successful.png',
                    width: 300,
                    height: 300,
                  ),
                  Container(
                    margin: edge_insets_t_40,
                    width: screenWidth * 0.7,
                    child: const Text(
                      'Your payment is successful',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.green,
                        fontSize: Fonts.fontSize32,
                        fontFamily: Fonts.fontNunito,
                        fontWeight: Fonts.f400,
                      ),
                    ),
                  ),
                  Container(
                    padding: edge_insets_24,
                    child: const Text(
                      'Lorem ipsum dolor sit amet consectetur. Eget eget elit posuere sagittis pharetra tempor odio ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.textGrey,
                        fontSize: Fonts.fontSize18,
                        fontFamily: Fonts.fontNunito,
                        fontWeight: Fonts.f400,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PlansBeecareHomeScreen()));
                    },
                    child: const Text(
                      'Back to home',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.bgPrimary,
                        fontSize: Fonts.fontSize18,
                        fontFamily: Fonts.fontNunito,
                        fontWeight: Fonts.f700,
                      ),
                    ),
                  )
                ],
              ),
            ),
            bottomNavigationBar: Container(
              color: AppColors.white,
              width: screenWidth,
              padding: edge_insets_16,
              child: FractionallySizedBox(
                widthFactor: 0.75,
                child: Container(
                  padding: edge_insets_y_8,
                  decoration:
                  BoxDecoration(color: AppColors.bgPrimary, borderRadius: radius.br_30),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Schedule plan',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: Fonts.fontSize18,
                        fontFamily: Fonts.fontNunito,
                        fontWeight: Fonts.f700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  PlansPaymentSuccessfulScreenCubit createCubitAndAssignToController(BuildContext context) {
    PlansPaymentSuccessfulScreenCubit plansPaymentSuccessfulScreenCubit =
        PlansPaymentSuccessfulScreenCubit();
    controller?.cubit = plansPaymentSuccessfulScreenCubit;
    return plansPaymentSuccessfulScreenCubit;
  }

}
