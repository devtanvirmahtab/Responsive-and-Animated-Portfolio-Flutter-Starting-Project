import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: AspectRatio( aspectRatio: Responsive.isMobileLarge(context) ? 2 : 2.8,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset("assets/images/bg.jpeg",fit: BoxFit.cover,),
              Container(color: darkColor.withOpacity(.66)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Discover my Amazing \nArt Space!",
                      style: Responsive.isDesktop(context) ?
                      Theme.of(context).textTheme.headline3!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ) : Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      )
                    ),
                    SizedBox(height: defaultPadding),
                    MyBuildAnimationText(),
                    SizedBox(height: defaultPadding),
                    if(!Responsive.isMobile(context))
                      ElevatedButton(
                      onPressed: (){},
                      child: Text("Explore Now",style: TextStyle(color: darkColor),),
                      style: Responsive.isDesktop(context) ?
                      ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal: defaultPadding*2,
                            vertical: defaultPadding,
                          ),
                          backgroundColor: primaryColor
                      ) :
                      ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal: defaultPadding,
                            vertical: defaultPadding,
                          ),
                          backgroundColor: primaryColor
                      )
                    )
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}

class MyBuildAnimationText extends StatelessWidget {
  const MyBuildAnimationText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Row(
        children: [
          if(Responsive.isDesktop(context)) FlutterCodedText(),
          if(Responsive.isDesktop(context)) SizedBox(width: defaultPadding/2),
          Text('I built '),
          Responsive.isMobile(context) ? Expanded(child: AnimatedText()) : AnimatedText(),
          if(Responsive.isDesktop(context)) SizedBox(width: defaultPadding/2),
          if(Responsive.isDesktop(context)) FlutterCodedText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText("responsive web and mobile app",speed: Duration(
            milliseconds: 70
        ),),
        TyperAnimatedText("Complete e-commerce app UI",speed: Duration(
            milliseconds: 70
        ),),
        TyperAnimatedText("Chat app with dark and light theme",speed: Duration(
            milliseconds: 70
        ),),
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
        TextSpan(text: '<',children: [
          TextSpan(text: "flutter",style: TextStyle(color: primaryColor)),
          TextSpan(text: ">")
        ])
    );
  }
}
