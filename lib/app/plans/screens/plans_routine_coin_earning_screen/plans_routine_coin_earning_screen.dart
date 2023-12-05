import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans_beecare_home_screen/plans_beecare_home_screen.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans_routine_coin_earning_screen/plans_routine_coin_earning_screen_controller.dart';
import 'package:beebloom_water_tracker/app/plans/screens/plans_routine_coin_earning_screen/plans_routine_coin_earning_screen_cubit.dart';
import 'package:beebloom_water_tracker/app/styles/borders.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlansRoutineCoinEarningScreen extends BaseStatelessWidget<PlansRoutineCoinEarningScreenController, PlansRoutineCoinEarningScreenCubit>{
  const PlansRoutineCoinEarningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlansRoutineCoinEarningScreenCubit>(
        create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<PlansRoutineCoinEarningScreenCubit, PlansRoutineCoinEarningScreenState>(
        listener: (context, state){},
        builder: (context, state){
          double screenWidth = MediaQuery.of(context).size.width;

          return Scaffold(
            body: Container(
              width: screenWidth,
              color: AppColors.bgPrimary,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset(
                      'images/coin_earning_popup_img.png',
                      width: 298,
                      height: 298,
                    ),
                  ),
                  Container(
                    margin: edge_insets_t_65,
                    child: const Text(
                      'Congratulations!',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: Fonts.fontSize32,
                        fontFamily: Fonts.fontplayfair,
                        fontWeight: Fonts.f700,
                      ),
                    ),
                  ),
                  Container(
                    margin: edge_insets_t_24,
                    child: const Text(
                      'You got more points for\ncompleted the cleansing step',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.grey4,
                        fontSize: Fonts.fontSize18,
                        fontFamily: Fonts.fontNunito,
                        fontWeight: Fonts.f400,
                      ),
                    ),
                  ),
                  Container(
                    margin: edge_insets_t_40,
                    padding: edge_insets_24,
                    width: screenWidth - 100,
                    decoration: BoxDecoration(
                        borderRadius: radius.br_10, color: AppColors.bgBackgroundPurple),
                    child: Column(
                      children: [
                        Container(
                          margin: edge_insets_b_16,
                          child: const Text(
                            'You earned',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.grey2,
                              fontSize: Fonts.fontSize18,
                              fontFamily: Fonts.fontNunito,
                              fontWeight: Fonts.f400,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/coin.png',
                              width: 31,
                              height: 31,
                            ),
                            Container(
                              padding: edge_insets_l_8,
                              child: const Text(
                                '11',
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: Fonts.fontSize24,
                                  fontFamily: Fonts.fontNunito,
                                  fontWeight: Fonts.f700,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: edge_insets_t_65,
                    child: TextButton(
                      onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PlansBeecareHomeScreen())),
                      child: const Text(
                        'Go back to home',
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
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  PlansRoutineCoinEarningScreenCubit createCubitAndAssignToController(BuildContext context) {
    PlansRoutineCoinEarningScreenCubit plansRoutineCoinEarningScreenCubit =
        PlansRoutineCoinEarningScreenCubit();
    controller?.cubit = plansRoutineCoinEarningScreenCubit;
    return plansRoutineCoinEarningScreenCubit;
  }

}
