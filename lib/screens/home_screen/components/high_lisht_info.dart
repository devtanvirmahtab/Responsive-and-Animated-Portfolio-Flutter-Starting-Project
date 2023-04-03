
import 'package:flutter/material.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../components/animated_counter.dart';
import '../../../constants.dart';

class HighLighterInfo extends StatelessWidget {
  const HighLighterInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobile(context)?
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HighLight(counter: AnimatedCounter(value: 119,text: 'K+',),label: "Subscribers",),
                  HighLight(counter: AnimatedCounter(value: 40,text: '+',),label: "Videos",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HighLight(counter: AnimatedCounter(value: 30,text: '+',),label: "Github Projects",),
                  HighLight(counter: AnimatedCounter(value: 13,text: 'K+',),label: "Stars",),
                ],
              ),
            ],
          )
          : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HighLight(counter: AnimatedCounter(value: 119,text: 'K+',),label: "Subscribers",),
              HighLight(counter: AnimatedCounter(value: 40,text: '+',),label: "Videos",),
              HighLight(counter: AnimatedCounter(value: 30,text: '+',),label: "Github Projects",),
              HighLight(counter: AnimatedCounter(value: 13,text: 'K+',),label: "Stars",),
        ],
      ),
    );
  }
}

class HighLight extends StatelessWidget {
  const HighLight({
    Key? key, this.label, required this.counter,
  }) : super(key: key);
  final String? label;
  final Widget counter;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        SizedBox(width: defaultPadding/2),
        Text(label!,style: Theme.of(context).textTheme.subtitle2,)
      ],
    );
  }
}