import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Project.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key, required this.project,
  }) : super(key: key);
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: secondaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            style: Theme.of(context).textTheme.subtitle2,
            overflow: TextOverflow.ellipsis,
          ),
          Spacer(),
          Text(
            project.description!,
            style:TextStyle(height: 1.5) ,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
          Spacer(),
          TextButton(
            onPressed: (){},
            child: Text("Read More>>",style: TextStyle(color: primaryColor),),
          )
        ],
      ),
    );
  }
}