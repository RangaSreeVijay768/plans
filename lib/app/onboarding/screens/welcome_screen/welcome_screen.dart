import 'package:beebloom_water_tracker/app/onboarding/screens/welcome_screen/welcome_screen_cubit.dart';
import 'package:beebloom_water_tracker/app/onboarding/widgets/onboarding_child_widget_1/onboarding_child_widget_1.dart';
import 'package:beebloom_water_tracker/app/onboarding/widgets/onboarding_child_widget_1/onboarding_child_widget_1_cubit.dart';
import 'package:beebloom_water_tracker/app/onboarding/widgets/onboarding_child_widget_2/onboarding_child_widget_2.dart';
import 'package:beebloom_water_tracker/app/onboarding/widgets/onboarding_child_widget_2/onboarding_child_widget_2_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => WelcomeScreenCubit(),
      child: MultiBlocListener(
          listeners: [
            BlocListener<WelcomeScreenCubit, WelcomeScreenState>(
              listener: (context, state) {
                // TODO: implement listener
              },
            ),
          ],
          child: Scaffold(body: Center(
            child: BlocBuilder<WelcomeScreenCubit, WelcomeScreenState>(
              builder: (context, state) {
                return Container(
                  child: Column(
                    children: [
                      Text("hello world"),
                      ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<OnboardingChildWidget2Cubit>(
                                    context)
                                .emitMinuteState(10);
                            BlocProvider.of<OnboardingChildWidget1Cubit>(
                                    context)
                                .emitEvent1(10);
                          },
                          child: Text("hello world")),
                      OnboardingChildWidget1(
                        key: Key("child1"),
                      ),
                      OnboardingChildWidget2(key: Key("child2"))
                    ],
                  ),
                );
              },
            ),
          ))),
    );

// child: Scaffold(
//     body: Center(
//         child: BlocBuilder<WelcomeScreenCubit, WelcomeScreenState>(
//             builder: (context, state) => Scaffold(
//                   body: Container(
//                       padding: EdgeInsets.only(
//                           top: 170, left: 30, right: 30),
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage("images/background.png"),
//                           colorFilter: new ColorFilter.mode(
//                               Colors.white.withOpacity(0.4),
//                               BlendMode.dstATop),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       // padding: EdgeInsets.all(30.0),
//                       child: Column(
//                         mainAxisAlignment:
//                             MainAxisAlignment.spaceEvenly,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           // Image.asset("images/home.png", fit: BoxFit.fitWidth),
//                           Image.asset(
//                               "images/water-tracker-onboarding.png",
//                               fit: BoxFit.fitWidth),
//                           Column(
//                               crossAxisAlignment:
//                                   CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                   child: Text(
//                                     "Welcome to hydration tracker",
//                                     style: TextStyle(
//                                       color: Color(0xFF2D2D2D),
//                                       fontSize: 24,
//                                       fontFamily: 'Nunito',
//                                       fontWeight: FontWeight.w700,
//                                     ),
//                                   ),
//                                 ),
//                                 Container(
//                                   padding: EdgeInsets.only(top: 20),
//                                   child: Text(
//                                     "Lorem ipsum dolor sit amet Lorem ipsum dolor sit dolor sit amet Lorem ipsum dolor sit amet",
//                                     style: TextStyle(
//                                       color: Color(0xFF787878),
//                                       fontSize: 14,
//                                       fontFamily: 'Nunito',
//                                       fontWeight: FontWeight.w400,
//                                     ),
//                                   ),
//                                 ),
//                               ]),
//
//                           Center(
//                             child: OutlinedButton(
//                               // onHover: HSLColor.fromColor(Colors.black),
//                               style: OutlinedButton.styleFrom(
//                                 padding: EdgeInsets.fromLTRB(
//                                     100, 20, 100, 20),
//                                 side: BorderSide(
//                                     color:
//                                         Color.fromRGBO(0, 147, 183, 1)),
//                               ),
//                               onPressed: () {
//                                 GoRouter.of(context).go('/weight');
//                               },
//                               // child: Center(
//                               child: Text(
//                                 "Let's go",
//                                 style: TextStyle(
//                                   color: Color.fromRGBO(0, 147, 183, 1),
//                                   fontFamily: 'Nunito',
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.w700,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       )),
//                 )))));
  }
}
