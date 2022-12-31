import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class RowEducationDetail extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String yr, uvrsty_Schl, course, percentage;
  const RowEducationDetail({
    super.key,
    required this.yr,
    // ignore: non_constant_identifier_names
    required this.uvrsty_Schl,
    required this.course,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            yr,
            style: TextStyle(
              color: Colors.white,
              fontSize: (context.isMobile) ? 11 : 18,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            uvrsty_Schl,
            style: TextStyle(
              color: Colors.white,
              fontSize: (context.isMobile) ? 11 : 18,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            course,
            style: TextStyle(
              color: Colors.white,
              fontSize: (context.isMobile) ? 11 : 18,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            percentage,
            style: TextStyle(
              color: Colors.white,
              fontSize: (context.isMobile) ? 11 : 18,
            ),
          ),
        ),
      ],
    );
  }
}
