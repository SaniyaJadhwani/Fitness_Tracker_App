import 'package:fitness_tracker/models/DetailPageButton.dart';
import 'package:fitness_tracker/models/DetailPageTitle.dart';
import 'package:fitness_tracker/models/ListWheelViewScroller.dart';
import 'package:flutter/material.dart';

class Heightscreen extends StatefulWidget {
  const Heightscreen({super.key});

  @override
  State<Heightscreen> createState() => _HeightscreenState();
}

class _HeightscreenState extends State<Heightscreen> {
  @override
  Widget build(BuildContext context) {
    List<String> items=[];
    for(int i=1; i<200;i++)
      {
        items.add(i.toString());
      }
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
            Detailpagetitle(text: 'This helps us to create a personalized plan for you', title: 'What is your height?', color: Colors.white),
            SizedBox(height: size.height*0.055,),
            SizedBox(
              height: size.height*0.5,
            child:  Listwheelviewscroller(
                items:items,),),
            Detailpagebutton(text: 'Next', onTap: (){Navigator.pushNamed(context,'/Goal');}, onBackTap:(){Navigator.pop(context);},showBackButton: true,),
          ],
        ),
      ),
    );
  }
}
