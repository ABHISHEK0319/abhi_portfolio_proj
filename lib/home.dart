import 'dart:ui';

import 'package:abhi_portfolio_proj/addNextUi.dart';
import 'package:abhi_portfolio_proj/coolors.dart';
import 'package:abhi_portfolio_proj/footer.dart';
import 'package:abhi_portfolio_proj/header.dart';
import 'package:abhi_portfolio_proj/middleScreen.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:velocity_x/velocity_x.dart';

import 'middle.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolers.primaryColor,
      child: VStack([
        const HeaderScreen(),
        if (context.isMobile) const IntroductionWidget().p16(),
        const ExamplePage(),
        const AddNextUiPart(),
        const Footer(),
      ]).scrollVertical(),
    );
  }
}
