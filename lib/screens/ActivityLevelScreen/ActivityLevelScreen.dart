import 'package:fitness_tracker/models/ListWheelViewScroller.dart';
import 'package:flutter/material.dart';

import '../../models/DetailPageButton.dart';
import '../../models/DetailPageTitle.dart';

class Activitylevelscreen extends StatefulWidget {
  const Activitylevelscreen({super.key});

  @override
  State<Activitylevelscreen> createState() => _ActivitylevelscreenState();
}

class _ActivitylevelscreenState extends State<Activitylevelscreen> {
  @override
  Widget build(BuildContext context) {
    List<String> items = [
      'Rookie',
      'Beginner',
      'Intermediate',
      'Advanced',
      'Pro',
    ];

    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: size.width,
        height: size.height,
        padding: EdgeInsets.only(
          top: size.height * 0.06,
          left: size.width * 0.05,
          right: size.width * 0.05,
          bottom: size.height * 0.03,
        ),
        child: Column(
          children: [
            const Detailpagetitle(
                text: 'This helps us to create a personlized plan for you',
                title: "What is your Activity Level?",
                color: Colors.white),
            SizedBox(
              height: size.height * 0.055,
            ),
            SizedBox(
              height: size.height * 0.5,
              child: Listwheelviewscroller(
                items: items,
              ),
            ),
            Detailpagebutton(
              text: 'Next',
              onTap: () {},
              showBackButton: true,
              onBackTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
