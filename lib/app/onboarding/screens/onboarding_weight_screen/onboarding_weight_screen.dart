import 'package:beebloom_water_tracker/app/onboarding/screens/onboarding_weight_screen/onboarding_weight_screen_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../themes/app_colors.dart';

class OnboardingWeightScreen extends StatelessWidget {
  const OnboardingWeightScreen();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => OnboardingWeightScreenCubit(),
        child: Scaffold(
            body: Center(
                child: BlocBuilder<OnboardingWeightScreenCubit,
                    OnboardingWeightScreenState>(
          builder: (context, state) => SingleChildScrollView(
            child: Container(
              // padding: const EdgeInsets.only(top: 25),
              padding: const EdgeInsets.all(24),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                    offset: Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ),
                ],
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image.asset("images/home.png", fit: BoxFit.fitWidth),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const LinearProgressIndicator(
                          backgroundColor: Color(0xFFEAEAEA),
                          valueColor: AlwaysStoppedAnimation(
                              Color.fromRGBO(0, 147, 183, 1)),
                          minHeight: 8,
                          value: 0.5,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 40),
                          child: const Text(
                            "Add drinks",
                            style: TextStyle(
                              color: Color(0xFF2D2D2D),
                              fontSize: 24,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 20, bottom: 70),
                          child: const Text(
                            "Lorem ipsum dolor sit amet Lorem ipsum dolor sit",
                            style: TextStyle(
                              color: AppColors.textGrey,
                              fontSize: 14,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.only(right: 20),
                                    child: Column(
                                      children: [
                                        const Text(
                                          "Tea",
                                          style: TextStyle(
                                            color: AppColors.textGrey,
                                            fontSize: 18,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: 16, bottom: 16),
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color(0XFFEAEAEA),
                                                width: 1),
                                          ),
                                          child: Image.asset(
                                            "images/tea.png",
                                            width: 140,
                                            height: 140,
                                          ),
                                        ),
                                        OutlinedButton(
                                          // onHover: HSLColor.fromColor(Colors.black),
                                          style: OutlinedButton.styleFrom(
                                            // padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                                            // alignment:Alignment.center,
                                            backgroundColor:
                                                const Color.fromRGBO(
                                                    0, 147, 183, 1),
                                            side: const BorderSide(
                                                color: Color.fromRGBO(
                                                    0, 147, 183, 1)),
                                          ),
                                          onPressed: () {},
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    right: 8),
                                                child: const Icon(Icons.add,
                                                    color: Colors.white),
                                              ),
                                              const Text(
                                                "Add",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Nunito',
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Column(
                                      children: [
                                        const Text(
                                          "Coffee",
                                          style: TextStyle(
                                            color: AppColors.textGrey,
                                            fontSize: 18,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: 16, bottom: 16),
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color(0XFFEAEAEA),
                                                width: 1),
                                          ),
                                          child: Image.asset(
                                            "images/coffee.png",
                                            width: 140,
                                            height: 140,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            const Icon(Icons.remove,
                                                color: Color.fromRGBO(
                                                    0, 147, 183, 1)),
                                            OutlinedButton(
                                              style: OutlinedButton.styleFrom(
                                                side: const BorderSide(
                                                    color: Color.fromRGBO(
                                                        0, 147, 183, 1)),
                                              ),
                                              onPressed: () {},
                                              child: Container(
                                                padding: const EdgeInsets.only(
                                                    right: 10, left: 10),
                                                child: const Text(
                                                  "3",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontFamily: 'Nunito',
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const Icon(Icons.add,
                                                color: Color.fromRGBO(
                                                    0, 147, 183, 1)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Column(
                                      children: [
                                        const Text(
                                          "Tea",
                                          style: TextStyle(
                                            color: AppColors.textGrey,
                                            fontSize: 18,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                              top: 16, bottom: 16),
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: const Color(0XFFEAEAEA),
                                                width: 1),
                                          ),
                                          child: Image.asset(
                                            "images/tea.png",
                                            width: 140,
                                            height: 140,
                                          ),
                                        ),
                                        OutlinedButton(
                                          // onHover: HSLColor.fromColor(Colors.black),
                                          style: OutlinedButton.styleFrom(
                                            // padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                                            // alignment:Alignment.center,
                                            backgroundColor:
                                                Color.fromRGBO(0, 147, 183, 1),
                                            side: const BorderSide(
                                                color: Color.fromRGBO(
                                                    0, 147, 183, 1)),
                                          ),
                                          onPressed: () {},
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    right: 8),
                                                child: const Icon(Icons.add,
                                                    color: Colors.white),
                                              ),
                                              const Text(
                                                "Add",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Nunito',
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Column(
                                      children: [
                                        const Text(
                                          "Coffee",
                                          style: TextStyle(
                                            color: AppColors.textGrey,
                                            fontSize: 18,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                              top: 16, bottom: 16),
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: const Color(0XFFEAEAEA),
                                                width: 1),
                                          ),
                                          child: Image.asset(
                                            "images/coffee.png",
                                            width: 140,
                                            height: 140,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            const Icon(Icons.remove,
                                                color: Color.fromRGBO(
                                                    0, 147, 183, 1)),
                                            OutlinedButton(
                                              style: OutlinedButton.styleFrom(
                                                side: const BorderSide(
                                                    color: Color.fromRGBO(
                                                        0, 147, 183, 1)),
                                              ),
                                              onPressed: () {},
                                              child: Container(
                                                padding: const EdgeInsets.only(
                                                    right: 10, left: 10),
                                                child: const Text(
                                                  "3",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontFamily: 'Nunito',
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const Icon(Icons.add,
                                                color: Color.fromRGBO(
                                                    0, 147, 183, 1)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ]),
                ],
              ),
            ),
          ),
        ))));
  }
}
