import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Recommendation.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    Key? key, required this.recommendation,
  }) : super(key: key);
  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: defaultPadding),
      width: 400,
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: secondaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(recommendation.name!,style: Theme.of(context).textTheme.subtitle2,),
          Text(recommendation.source!),
          SizedBox(height: defaultPadding),
          Text(recommendation.text!,maxLines: 4,overflow: TextOverflow.ellipsis,style: TextStyle(height: 1.5),)
        ],
      ),
    );
  }
}