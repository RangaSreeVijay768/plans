import 'package:beebloom_water_tracker/app/onboarding/screens/welcome_screen/welcome_screen_cubit.dart';
import 'package:beebloom_water_tracker/app/onboarding/widgets/onboarding_child_widget_1/onboarding_child_widget_1_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingChildWidget1 extends StatelessWidget {
  const OnboardingChildWidget1({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingChildWidget1Cubit>(
      create: (context) => OnboardingChildWidget1Cubit(),
      child:
          BlocBuilder<OnboardingChildWidget1Cubit, OnboardingChildWidget1State>(
        builder: (context, state) {
          return
               Column(
                children: [
                  Text('Second 1'),
                  ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<WelcomeScreenCubit>(context).test();
                            context
                                .read<OnboardingChildWidget1Cubit>()
                                .emitEvent1(DateTime.now().second);
                          },
                      child: Text('Second'))
                ],
              )            ;
        },
      ),
    );
  }
}
