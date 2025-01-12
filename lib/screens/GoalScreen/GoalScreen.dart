import 'package:flutter/material.dart';

import '../../models/DetailPageButton.dart';
import '../../models/DetailPageTitle.dart';
import '../../models/ListWheelViewScroller.dart';

class Goalscreen extends StatefulWidget {
  const Goalscreen({super.key});

  @override
  State<Goalscreen> createState() => _GoalscreenState();
}

class _GoalscreenState extends State<Goalscreen> {
  @override
  Widget build(BuildContext context) {
    List<String> items = [
      'Lose Weight',
      'Gain Weight',
      'Stay Fit',
      'Build Muscle'

          'Improve Endurance',
      'Stay Healthy',

    ];
    var size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: size.width,
        height: size.height,
        padding: EdgeInsets.only(
            top: size.height*0.06,
            left: size.width*0.05,
            right: size.width*0.05,
            bottom: size.height*0.03
        ),
        child: Column(
          children: [
            Detailpagetitle(text: 'This helps us to create a personalized plan for you', title: 'What is your Goal?', color: Colors.white),
            SizedBox(height: size.height*0.055,),
            SizedBox(
              height: size.height*0.5,
              child:  Listwheelviewscroller(
                items:items,),),
            Detailpagebutton(text: 'Next', onTap: (){ Navigator.pushNamed(context, '/Activity');}, onBackTap:(){Navigator.pop(context);},showBackButton: true,),
          ],
        ),
      ),
    );
  }
}
