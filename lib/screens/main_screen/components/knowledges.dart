import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding/2),
          child: Text('Knowledge',style: Theme.of(context).textTheme.subtitle2,),
        ),
        KnowledgeText(text: 'Flutter, Dart',),
        KnowledgeText(text: 'Java, C',),
        KnowledgeText(text: 'Git, Github',),
        KnowledgeText(text: 'Figma, Kubernatis',),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  final String text;
  const KnowledgeText({
    Key? key, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:defaultPadding/2),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          SizedBox(width: defaultPadding/2,),
          Text(text)
        ],
      ),
    );
  }
}