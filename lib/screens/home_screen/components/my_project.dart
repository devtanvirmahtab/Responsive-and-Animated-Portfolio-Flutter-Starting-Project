import 'package:flutter/material.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../constants.dart';
import '../../../models/Project.dart';
import 'project_card.dart';

class MyProject extends StatelessWidget {
  const MyProject({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(height: defaultPadding),
        Responsive(
            mobile: ProjectGridView(crossAxisCount: 1,childAspectRation:1.5),
            mobileLarge: ProjectGridView(crossAxisCount: 2,childAspectRation:1.2),
            tablet: ProjectGridView(childAspectRation: 1.1,),
            desktop: ProjectGridView()
        )
      ],
    );
  }
}

class ProjectGridView extends StatelessWidget {
  const ProjectGridView({
    this.crossAxisCount = 3,
    this.childAspectRation = 1.35,
    Key? key,
  }) : super(key: key);
  final int crossAxisCount;
  final double childAspectRation;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: childAspectRation,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding),
      itemBuilder: (context, index) => ProjectCard(project: demo_projects[index],),
    );
  }
}