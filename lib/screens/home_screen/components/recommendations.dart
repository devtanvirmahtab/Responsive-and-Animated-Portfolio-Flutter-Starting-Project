import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Recommendation.dart';
import 'recommendation_card.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommendation",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: defaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  demo_recommendations.length,
                      (index) => RecommendationCard(recommendation: demo_recommendations[index],)
              ),
            ),
          )

        ],
      ),
    );
  }
}