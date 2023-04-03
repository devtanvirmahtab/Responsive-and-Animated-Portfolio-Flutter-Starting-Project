import 'package:flutter/material.dart';

import '../../../components/animated_linear_progress_indicator.dart';
import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding:  EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Coding",style: Theme.of(context).textTheme.subtitle2,),
        ),
        AnimatedLinearProgressIndicator(percentage: 0.5, label: 'Dart',),
        AnimatedLinearProgressIndicator(percentage: 0.8, label: 'Flutter',),
        AnimatedLinearProgressIndicator(percentage: 0.7, label: 'Getx',),

      ],
    );
  }
}