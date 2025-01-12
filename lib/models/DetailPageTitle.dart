import 'package:flutter/material.dart';

class Detailpagetitle extends StatelessWidget {
  final String text;
  final String title;
  final Color color;
  const Detailpagetitle({super.key, required this.text, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    double screenwidth=size.width;
    double paddingValue=screenwidth*0.08;
    return Column(
      children: [
        SizedBox(height:size.height*0.01),
        Align(
          alignment: Alignment.center,
          child: Text(title.toUpperCase(),
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: size.height*0.02,),
        Container(
          padding:EdgeInsets.symmetric(horizontal: paddingValue) ,
          child: Text(text,
            style: TextStyle(
              color: color,
              fontSize: 20.0,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
