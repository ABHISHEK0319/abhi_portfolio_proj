import 'package:abhi_portfolio_proj/coolors.dart';
import 'package:abhi_portfolio_proj/customUi/customContainer.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AddNextUiPart extends StatefulWidget {
  const AddNextUiPart({super.key});

  @override
  State<AddNextUiPart> createState() => _AddNextUiPartState();
}

class _AddNextUiPartState extends State<AddNextUiPart> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolers.darkestBlue,
      child: Center(
        child: Wrap(
          runAlignment: WrapAlignment.spaceEvenly,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            //Language Container....
            const Spacer(),
            CustomContainer(
                childWidget: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //>....Title.....***
                Text(
                  'Language',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: (context.isMobile) ? 26 : 32,
                  ),
                ),

                //SubTitle.....***
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(
                      thickness: 2,
                    ),
                    Text(
                      '> Hindi   (72%)*',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: (context.isMobile) ? 18 : 22,
                      ),
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                    Text(
                      '> English   (45%)*',
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: (context.isMobile) ? 18 : 22,
                      ),
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                    Text(
                      '> Bhojpuri   (55%)*',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: (context.isMobile) ? 18 : 22,
                      ),
                    ),
                  ],
                ),
              ],
            )),
            //Skills Container....
            const Spacer(),
            CustomContainer(
                childWidget: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //>....Title.....***
                Text(
                  'Skills',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: (context.isMobile) ? 26 : 32,
                  ),
                ),

                //SubTitle.....***

                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(
                      thickness: 2,
                    ),
                    Text(
                      '> HTML AND CSS',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: (context.isMobile) ? 18 : 22,
                      ),
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                    Text(
                      '> C AND JAVA\n   Programming Language',
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: (context.isMobile) ? 18 : 22,
                      ),
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                    Text(
                      '> DBMS',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: (context.isMobile) ? 18 : 22,
                      ),
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                    Text(
                      '> FLUTTER + DART',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: (context.isMobile) ? 18 : 22,
                      ),
                    ),
                  ],
                ),
              ],
            )),
            // Use Platform.....
            const Spacer(),
            CustomContainer(
                childWidget: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //>....Title.....***
                Text(
                  'Use Platform',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: (context.isMobile) ? 26 : 32,
                  ),
                ),

                //SubTitle.....***

                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(
                      thickness: 2,
                    ),
                    Text(
                      '> Android Studio',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: (context.isMobile) ? 18 : 22,
                      ),
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                    Text(
                      '> VS Code',
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: (context.isMobile) ? 18 : 22,
                      ),
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                    Text(
                      '> GitHub And Git',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: (context.isMobile) ? 18 : 22,
                      ),
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                    Text(
                      '> DB Browser',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: (context.isMobile) ? 18 : 22,
                      ),
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                    Text(
                      '> Adobe XD',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: (context.isMobile) ? 18 : 22,
                      ),
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                    Text(
                      '> Rive',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: (context.isMobile) ? 18 : 22,
                      ),
                    ),
                  ],
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
