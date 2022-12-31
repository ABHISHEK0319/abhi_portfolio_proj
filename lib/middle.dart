import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MiddleScreen extends StatelessWidget {
  const MiddleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.purple700,
      child: Flex(
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          15.heightBox,
          "All Creative Works, \n"
              .richText
              .withTextSpanChildren(
                ["Selected projects.".textSpan.yellow400.make()],
              )
              .xl4
              .white
              .make(),
          20.widthBox,
          Expanded(
            child: VxSwiper(height: 160, items: [
              "Frontier Wallet"
                  .text
                  .bold
                  .white
                  .xl
                  .wide
                  .center
                  .make()
                  .box
                  .p8
                  .roundedLg
                  .alignCenter
                  .square(200)
                  .neumorphic(
                    color: Vx.purple700,
                    elevation: 5.0,
                    curve: VxCurve.flat,
                  )
                  .make(),
            ]),
          ).h(300),
        ],
      ),
    );
  }
}
