import 'package:abhi_portfolio_proj/coolors.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolers.lightColorOne.withOpacity(0.13),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white.withOpacity(0.13),
              width: 2,
            ),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white.withOpacity(0.16),
                  Colors.white.withOpacity(0.09),
                ]),
          ),
          height: 120,
          child: Center(
            child: Wrap(
              runAlignment: WrapAlignment.spaceEvenly,
              children: [
                const SizedBox(width: 35),
                Icon(
                  Icons.location_on_outlined,
                  color: Coolers.lightGreenColor,
                  size: (context.isMobile) ? 25 : 40,
                ),
                const SizedBox(width: 15),
                Text(
                  'Sec J Jankipuram Lucknow',
                  style: TextStyle(
                    fontSize: (context.isMobile) ? 15 : 18,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 35),
                Icon(
                  Icons.mail_outline_sharp,
                  color: Coolers.lightGreenColor,
                  size: (context.isMobile) ? 25 : 40,
                ),
                const SizedBox(width: 15),
                Text(
                  'abhishekmaurya1219@gmail.com',
                  style: TextStyle(
                    fontSize: (context.isMobile) ? 15 : 18,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 35),
                Icon(
                  Icons.call,
                  color: Coolers.lightGreenColor,
                  size: (context.isMobile) ? 25 : 40,
                ),
                const SizedBox(width: 15),
                Text(
                  '+91 7081720126',
                  style: TextStyle(
                    fontSize: (context.isMobile) ? 15 : 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
