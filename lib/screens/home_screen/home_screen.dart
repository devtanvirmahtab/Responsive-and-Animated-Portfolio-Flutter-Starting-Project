import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/models/Project.dart';
import 'package:flutter_profile/models/Recommendation.dart';
import 'package:flutter_profile/screens/main_screen/main_screen.dart';

import 'components/high_lisht_info.dart';
import 'components/home_banner.dart';
import 'components/my_project.dart';
import 'components/recommendations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighLighterInfo(),
        MyProject(),
        Recommendations()
      ],
    );
  }
}








