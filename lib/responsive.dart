import 'package:flutter/material.dart';

// We will modify it once we have our final design

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? mobileLarge;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
    this.mobileLarge,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 500;

  static bool isMobileLarge(BuildContext context) =>
      MediaQuery.of(context).size.width <= 735;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1024;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1120;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    if (_size.width >= 1024) {
      return desktop;
    } else if (_size.width >= 735 && tablet != null) {
      return tablet!;
    } else if (_size.width >= 500 && mobileLarge != null) {
      return mobileLarge!;
    } else {
      return mobile;
    }
  }
}


//this is my code

class ResponsiveUi extends StatelessWidget {
  final Widget mobile;
  final Widget? mobileLarge;
  final Widget? tablet;
  final Widget desktop;

   ResponsiveUi({
    Key? key,
    required this.mobile,
    this.mobileLarge,
    this.tablet,
    required this.desktop
  }) : super(key: key);



   static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 500;

   static bool isMobileLarge(BuildContext context) =>
       MediaQuery.of(context).size.width <=700;

   static bool isTablet(BuildContext context) =>
       MediaQuery.of(context).size.width < 1024;

   static isDesktop(BuildContext context) =>
       MediaQuery.of(context).size.width >= 1024;


  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    if(_size.width >= 1024){
      return desktop;
    } else if (_size.width >= 700 && tablet != null ) {
      return tablet!;
    } else if (_size.width >= 450 && mobileLarge != null) {
      return mobileLarge!;
    } else {
      return mobile;
    }
  }
}

