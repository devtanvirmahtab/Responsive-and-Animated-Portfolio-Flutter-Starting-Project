import 'package:flutter/material.dart';
import 'package:flutter_profile/responsive.dart';

import '../constants.dart';

class AnimatedCounter extends StatelessWidget {
  final String text;
  final int value;
  const AnimatedCounter({
    Key? key, required this.text, required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: IntTween(begin: 0,end: value),
        duration: defaultDuration,
        builder: (context,value,child) =>Text(
            '$value$text',
            style: Responsive.isMobileLarge(context) ? Theme.of(context).textTheme.subtitle1!.copyWith(color: primaryColor)
                : Theme.of(context).textTheme.headline6!.copyWith(color: primaryColor)
        )
    );
  }
}