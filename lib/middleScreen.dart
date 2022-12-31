import 'dart:ui';

import 'package:abhi_portfolio_proj/coolors.dart';
import 'package:abhi_portfolio_proj/customUi/addDetailUi.dart';
import 'package:abhi_portfolio_proj/customUi/tableEducationUi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:rive/rive.dart';
import 'package:tab_container/tab_container.dart';
import 'package:velocity_x/velocity_x.dart';

class ExamplePage extends StatefulWidget {
  const ExamplePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ExamplePageState createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  late final TabContainerController _controller;
  late TextTheme textTheme;

  @override
  void initState() {
    _controller = TabContainerController(length: 3);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    textTheme = Theme.of(context).textTheme;
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      //color: Coolers.darkestBlue,
      child: SizedBox(
        width: double.infinity,
        height: 550,
        child: Stack(fit: StackFit.passthrough, children: [
          const RiveAnimation.asset(
            "assets/images/background.riv",
            fit: BoxFit.cover,
          ),
          Positioned(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                  sigmaX: 20, sigmaY: 10, tileMode: TileMode.mirror),
              //child: SizedBox(),
            ),
          ),
          SafeArea(
            child: Container(
              margin: const EdgeInsets.all(5),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(10),
              //   border: Border.all(color: Colors.white.withOpacity(0.13)),
              //   gradient: LinearGradient(
              //       begin: Alignment.topLeft,
              //       end: Alignment.bottomRight,
              //       colors: [
              //         Colors.white.withOpacity(0.16),
              //         Colors.white.withOpacity(0.09),
              //       ]),
              // ),
              child: Center(
                child: SizedBox(
                  height: 500,
                  width: 650,
                  child: Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TabContainer(
                        color: Coolers.lightGreenColor.withAlpha(220),
                        //color: glassEffect,
                        tabEdge: TabEdge.right,
                        childPadding: const EdgeInsets.all(20.0),
                        tabs: _getTabs3(context),
                        isStringTabs: false,
                        children: _getChildren3(context),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  List<Widget> _getChildren3(BuildContext context) => <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Objective',
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            Text(
              "As a beginner in the field of Information Technology, I strive to associate myself with an organization where I can utilize my skills in the best possible manner, which further gives me an opportunity to grow in my career journey while contributing to the development of the organization.",
              style: TextStyle(
                color: Colors.white,
                fontSize: (context.isMobile) ? 12 : 18,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Education',
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            const Spacer(flex: 2),
            Expanded(
              flex: 4,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Divider(thickness: 2),
                    RowEducationDetail(
                      yr: "2019\n-22",
                      uvrsty_Schl: "University of Lucknow",
                      course: "BCA",
                      percentage: "74%",
                    ),
                    Divider(thickness: 2),
                    RowEducationDetail(
                      yr: "2019",
                      uvrsty_Schl: "Sri Shiv Chandra\nPublic Inter College",
                      course: "12th",
                      percentage: "68%",
                    ),
                    Divider(thickness: 2),
                    RowEducationDetail(
                      yr: "2017",
                      uvrsty_Schl: "R H Convent Inter\nCollege",
                      course: "10th",
                      percentage: "72%",
                    ),
                    Divider(thickness: 2),
                  ]),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Certificate',
                style: TextStyle(
                    fontSize: (context.isMobile) ? 30 : 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            const Spacer(flex: 3),
            Expanded(
              //flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Divider(thickness: 2),
                  RowEducationDetail(
                    yr: "2021\nSep-Oct",
                    uvrsty_Schl: "Softpro India",
                    course: "period:",
                    percentage: "45days",
                  ),
                  Divider(thickness: 2),
                ],
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Additional Details',
                style: TextStyle(
                    fontSize: (context.isMobile) ? 30 : 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            const Spacer(flex: 3),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Divider(thickness: 2),
                  AddDetailUi(addDetail: ">> Playing Cricket"),
                  Divider(thickness: 2),
                  AddDetailUi(addDetail: ">> I like Walking/Running"),
                  Divider(thickness: 2),
                  AddDetailUi(addDetail: ">> I like Yoga"),
                  Divider(thickness: 2),
                  AddDetailUi(
                      addDetail: ">> Watching Movies\n(Hollywood & Bollywood)"),
                  Divider(thickness: 2),
                ],
              ),
            ),
          ],
        ),
        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Text('Settings', style: Theme.of(context).textTheme.headline5),
        //     const Spacer(flex: 1),
        //     Expanded(
        //       flex: 3,
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         mainAxisAlignment: MainAxisAlignment.end,
        //         children: [
        //           SwitchListTile(
        //             title: const Text('Darkmode'),
        //             value: false,
        //             onChanged: (v) {},
        //             secondary: const Icon(Ionicons.md_moon),
        //           ),
        //           SwitchListTile(
        //             title: const Text('Analytics'),
        //             value: false,
        //             onChanged: (v) {},
        //             secondary: const Icon(Ionicons.md_analytics),
        //           ),
        //         ],
        //       ),
        // ),
      ];
  //   ),
  // ];

  List<Widget> _getTabs3(BuildContext context) => <Widget>[
        const Icon(
          Ionicons.md_information_circle,
          color: Colors.white,
        ),
        const Icon(
          Ionicons.md_school,
          color: Colors.white,
        ),
        const Icon(
          Ionicons.logo_android,
          color: Colors.white,
        ),
        const Icon(
          Ionicons.ios_man,
          color: Colors.white,
        ),
      ];
}
