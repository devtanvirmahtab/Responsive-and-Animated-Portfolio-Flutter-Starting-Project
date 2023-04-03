import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(defaultPadding),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Drawer(
          child: Column(
            children: [
              MyInfo(),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Column(
                    children: [
                      AreaInfoText(
                        title: "Residence",
                        text: "Bangladesh",
                      ),
                      AreaInfoText(
                        title: "City",
                        text: "Dhaka",
                      ),
                      AreaInfoText(
                        title: "Age",
                        text: "23",
                      ),
                      Divider(),
                      Skills(),
                      SizedBox(height: defaultPadding),
                      Coding(),
                      Knowledges(),
                      Divider(),
                      TextButton(
                        onPressed: (){},
                        child: FittedBox(
                          child: Row(
                            children: [
                            Text(
                                'DOWNLOAD CV',
                              style: TextStyle(
                                color: Theme.of(context).textTheme.bodyText1!.color
                              ),
                            ),
                            SizedBox(width: defaultPadding/2),
                            SvgPicture.asset('assets/icons/download.svg'),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: defaultPadding/2),
                        color: Color(0xFF24242E),
                        child: Row(
                          children: [
                            Spacer(),
                            IconButton(
                              onPressed: (){},
                              icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                            ),
                            IconButton(
                              onPressed: (){},
                              icon: SvgPicture.asset("assets/icons/twitter.svg"),
                            ),
                            IconButton(
                              onPressed: (){},
                              icon: SvgPicture.asset("assets/icons/github.svg"),
                            ),
                            Spacer(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}











