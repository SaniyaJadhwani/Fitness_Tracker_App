import 'package:fitness_tracker/constants/color.dart';
import 'package:fitness_tracker/models/DetailPageButton.dart';
import 'package:fitness_tracker/models/DetailPageTitle.dart';
import 'package:fitness_tracker/models/ListWheelViewScroller.dart';
import 'package:flutter/material.dart';

class AgeScreen extends StatefulWidget {
  const AgeScreen({super.key});

  @override
  State<AgeScreen> createState() => _AgeScreenState();
}

class _AgeScreenState extends State<AgeScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> items=[];
    for(int i=1;i<100;i++)
      {
        items.add(i.toString());
      }
      var size=MediaQuery.of(context).size;
      return Scaffold(
          backgroundColor: Colors.black,
          body: Container(
          padding: EdgeInsets.only(
          top:size.height*0.07,
          left:size.width*0.05,
          right: size.width*0.05,
          bottom: size.height*0.018),
      width:size.width,
      height: size.height,
      child:  Column(
        children: [
          Detailpagetitle(
            title: 'How old are you'.toUpperCase(),
            text: 'This will help us to create a personalized plan for you',
            color: Colors.white,
          ),
          SizedBox(height: size.height*0.055,),
          SizedBox(
            height: size.height*0.5,
            child:Listwheelviewscroller(items:items,),
          ),
          Detailpagebutton(text: 'Next', onTap: (){Navigator.pushNamed(context,'/Weight');}, onBackTap: (){Navigator.pop(context);},showBackButton: true,)

        ],
      ),),);
  }
}
