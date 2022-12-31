import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomContainer extends StatelessWidget {
  final Widget childWidget;

  const CustomContainer({
    super.key,
    required this.childWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (context.isMobile) ? 350 : 400,
      width: (context.isMobile) ? 280 : 380,
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.only(left: 15, bottom: 18, top: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.white,
            width: 4,
          ),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white.withOpacity(0.15),
                Colors.white.withOpacity(0.05),
              ])),
      child: childWidget,
    );
  }
}
