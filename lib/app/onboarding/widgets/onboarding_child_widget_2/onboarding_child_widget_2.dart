import 'package:beebloom_water_tracker/app/onboarding/widgets/onboarding_child_widget_2/onboarding_child_widget_2_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingChildWidget2 extends StatelessWidget {
  const OnboardingChildWidget2({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingChildWidget2Cubit>(
      create: (context) => OnboardingChildWidget2Cubit(),
      child:
          BlocBuilder<OnboardingChildWidget2Cubit, OnboardingChildWidget2State>(
        builder: (context, state) {
          return  Column(
              children: [
                Text('Second widget'),
                ElevatedButton(
                  onPressed: () => {
                    context
                        .read<OnboardingChildWidget2Cubit>()
                        .emitMinuteState(DateTime.now().minute)
                  },
                  child: Text('minute'),
                )
              ],
            );
        },
      ),
    );
  }
}
