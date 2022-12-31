import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AddDetailUi extends StatelessWidget {
  final String addDetail;
  const AddDetailUi({super.key, required this.addDetail});

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            addDetail,
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
