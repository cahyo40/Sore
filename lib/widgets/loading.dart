import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../utils/constants/colors.dart';

class YoLoading extends StatelessWidget {
  const YoLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.discreteCircle(
        color: textColor,
        secondRingColor: primaryColor,
        thirdRingColor: secondaryColor,
        size: 48,
      ),
    );
  }
}
