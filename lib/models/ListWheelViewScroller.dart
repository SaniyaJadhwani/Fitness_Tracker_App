import 'package:flutter/material.dart';

import '../constants/color.dart';
class Listwheelviewscroller extends StatelessWidget {
  final List<String> items;
  const Listwheelviewscroller({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
   // var size=MediaQuery.of(context).size;
    return ListWheelScrollView(
        magnification: 1.3,
        useMagnifier: true,
        overAndUnderCenterOpacity: 0.15,
        controller: FixedExtentScrollController(initialItem: items.length ~/ 2),
        physics: FixedExtentScrollPhysics(),
        itemExtent:50 ,
        diameterRatio: 1.5,
        children: items.map(
            (level){
              return Text(level,style:TextStyle(fontSize: 30,color: PrimaryColor,fontWeight: FontWeight.bold) ,);
            }
        ).toList(),
    );
  }
}
