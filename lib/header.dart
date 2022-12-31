import 'dart:math';
import 'package:abhi_portfolio_proj/coolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

//import 'package:flutter_icons/flutter_icons.dart';
import 'package:velocity_x/velocity_x.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var nameWidget = "Abhishek\nMaurya"
        .text
        .white
        .xl6
        .lineHeight(1)
        .size(context.isMobile ? 11 : 15)
        .bold
        .make()
        .shimmer();
    return SafeArea(
      child: VxBox(
        child: VStack([
          ZStack([
            const PictureWidget(),
            Row(
              children: [
                VStack([
                  if (context.isMobile) 50.heightBox else 10.heightBox,
                  const CustomAppBar().shimmer(
                    primaryColor: Coolers.accentColor,
                  ),
                  30.heightBox,
                  nameWidget,
                  20.heightBox,
                  VxBox()
                      .color(Coolers.accentColor)
                      .size(60, 10)
                      .make()
                      .shimmer(primaryColor: Coolers.accentColor),
                  30.heightBox,
                  const SocialAccounts(),
                ]).pSymmetric(
                  h: context.percentWidth * 10,
                  v: 32,
                ),
                Expanded(
                  child: VxResponsive(
                    fallback: const Offstage(),
                    small: const IntroductionWidget()
                        .pOnly(left: 120)
                        .h(context.percentHeight * 60),
                    medium: const IntroductionWidget()
                        .pOnly(left: 120)
                        .h(context.percentHeight * 60),
                    large: const IntroductionWidget()
                        .pOnly(left: 120)
                        .h(context.percentHeight * 60),
                  ),
                ),
              ],
            ).w(context.screenWidth)
          ]),
        ]),
      )
          //.size(context.screenWidth, context.percentHeight * 60)
          .color(Coolers.secondaryColor)
          .make(),
    );
  }
}

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        [
          " - Introduction".text.gray500.widest.sm.make(),
          10.heightBox,
          "@I am flutter App, firebase, dart & web developer.\nPublic Speaker, Blogger, Entrepreneur & YouTuber."
              .text
              .white
              .xl3
              .maxLines(5)
              .make()
              .w(context.isMobile
                  ? context.screenWidth
                  : context.percentWidth * 40),
          20.heightBox,
        ].vStack().centered().pOnly(top: 86),
        ElevatedButton(
          onPressed: () {
            launchUrlString("#");
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Coolers.accentColor,
          ),
          child: "Visit Resume".text.make(),
        ).h(50).centered().pOnly(top: 20),
      ],
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}

class PictureWidget extends StatelessWidget {
  const PictureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      width: 500,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.white.withOpacity(0.13)),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.white.withOpacity(0.15),
              Colors.white.withOpacity(0.05),
            ]),
      ),
      child: Center(
        child: Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(pi),
          child: Image.asset(
            "assets/images/shail.png",
            fit: BoxFit.cover,
            height: context.percentHeight * 80,
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.abc_rounded,
      size: 50,
      color: Coolers.accentColor,
    );
  }
}

class SocialAccounts extends StatelessWidget {
  const SocialAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return [
      const Icon(AntDesign.twitter, color: Colors.white).mdClick(() {
        launchUrlString('https://twitter.com');
      }).make(),
      20.widthBox,
      const Icon(AntDesign.instagram, color: Colors.white).mdClick(() {
        launchUrlString('https://instagram.com');
      }).make(),
      20.widthBox,
      const Icon(AntDesign.youtube, color: Colors.white).mdClick(() {
        launchUrlString('https://youtube.com');
      }).make(),
      20.widthBox,
      const Icon(AntDesign.github, color: Colors.white).mdClick(() {
        launchUrlString('https://github.com');
      }).make(),
      20.widthBox,
    ].hStack();
  }
}
