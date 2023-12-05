import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../styles/borders.dart';
import '../../../themes/app_colors.dart';
import '../../../styles/edge_insets.dart';

class MyPlansHowToDoModal extends StatefulWidget {
  const MyPlansHowToDoModal({super.key});

  @override
  State<MyPlansHowToDoModal> createState() => _MyPlansHowToDoModalState();
}

class _MyPlansHowToDoModalState extends State<MyPlansHowToDoModal> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double screenHeight = MediaQuery.of(context).size.height;

    var videoButtonColor = AppColors.grey3;

    var currentButton = 'video';

    var animationButtonColor = AppColors.white;

    void toggleBetweenVideoAnimation() {
      print('invoked state');
      setState(() {
        if (currentButton == 'video') {
          currentButton = 'animation';
        } else {
          currentButton = 'video';
        }
      });
    }

    void toggleCurrentButton() {
      setState(() {});
    }

    return Wrap(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: AppColors.white,
            borderRadius: radius.br_t_20,
          ),
          height: screenHeight * 0.75,
          width: double.infinity,
          child: Column(
            children: [
              Container(
                padding: edge_insets_x_24_y_16,
                decoration: BoxDecoration(
                  border: borders.bb_1px_grey2,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: const Text(
                        'How to do',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: AppColors.textHeading,
                          fontSize: 24,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        child:
                        const Icon(Icons.close, color: AppColors.textNormal),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: edge_insets_24,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        toggleBetweenVideoAnimation();
                      },
                      child: Container(
                        padding: edge_insets_x_40_y_10,
                        color: currentButton == 'video'
                            ? AppColors.grey3
                            : AppColors.white,
                        child: const Text(
                          'Video',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF6D3E75),
                            fontSize: 14,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        toggleBetweenVideoAnimation();
                      },
                      child: Container(
                        padding: edge_insets_x_40_y_10,
                        color: currentButton == 'animation'
                            ? AppColors.grey3
                            : AppColors.white,
                        child: const Text(
                          'Animation',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF6D3E75),
                            fontSize: 14,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: edge_insets_x_24,
                    margin: edge_insets_b_100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: edge_insets_t_24,
                          child: Image.asset(
                            'images/how_to_do.png',
                          ),
                        ),
                        Container(
                          margin: edge_insets_y_32,
                          alignment: Alignment.center,
                          child: const Text(
                            'OR',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.textGrey,
                              fontSize: 18,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          padding: edge_insets_b_24,
                          child: const Text(
                            'Follow these steps',
                            style: TextStyle(
                              color: AppColors.textNormal,
                              fontSize: 18,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Container(
                          padding: edge_insets_b_16,
                          child: const Text(
                            '1. Pour a dime-sized cleanser into your hand and rub it \n    together to make a light foam.',
                            style: TextStyle(
                              color: Color(0xFF2D2D2D),
                              fontSize: 14,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          padding: edge_insets_b_16,
                          child: const Text(
                            '1. Pour a dime-sized cleanser into your hand and rub it \n    together to make a light foam.',
                            style: TextStyle(
                              color: Color(0xFF2D2D2D),
                              fontSize: 14,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          padding: edge_insets_b_16,
                          child: const Text(
                            '1. Pour a dime-sized cleanser into your hand and rub it \n    together to make a light foam.',
                            style: TextStyle(
                              color: Color(0xFF2D2D2D),
                              fontSize: 14,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
