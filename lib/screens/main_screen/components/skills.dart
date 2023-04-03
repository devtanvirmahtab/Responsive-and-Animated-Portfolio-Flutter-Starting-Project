
import 'package:flutter/material.dart';

import '../../../components/animated_progress_indicator.dart';
import '../../../constants.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: defaultPadding,top: defaultPadding,bottom: defaultPadding),
          child: Text(
            "Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(child: AnimatedCicularProgressIndicator(percentage: 0.8,label: 'Flutter',)),
            SizedBox(width: defaultPadding),
            Expanded(child: AnimatedCicularProgressIndicator(percentage: 0.72,label: 'Firebase',)),
            SizedBox(width: defaultPadding),
            Expanded(child: AnimatedCicularProgressIndicator(percentage: 0.86,label: 'Node Js',)),

          ],
        )
      ],
    );
  }
}