import 'package:fitness_tracker/constants/color.dart';
import 'package:fitness_tracker/models/DetailPageButton.dart';
import 'package:fitness_tracker/models/DetailPageTitle.dart';
import 'package:flutter/material.dart';

class Genderscreen extends StatefulWidget {
  const Genderscreen({super.key});

  @override
  State<Genderscreen> createState() => _GenderscreenState();
}

class _GenderscreenState extends State<Genderscreen> {
  bool isMale=true;
  bool isFemale=false;
  @override
  Widget build(BuildContext context) {
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Detailpagetitle(
                title: 'Tell Us About Yourself',
                text: "This will help us to find the best\ncontent for u",
                color: Colors.white,
              ),
              SizedBox(height: size.height*0.055,),
              GenderIcon(
                icon: Icons.male,
                title: 'Male',
                onTap: (){
                  setState(() {
                    isMale=true;
                    isFemale=false;
                  });
                },
                isSelected: isMale ,
              ),
              SizedBox(height: size.height*0.05,),
              GenderIcon(
                icon: Icons.female,
                title: 'Female',
                onTap: (){
                  setState(() {
                    isFemale=true;
                    isMale=false;
                  });
                },
                isSelected: isFemale ,
              ),
              const Spacer(),
              Detailpagebutton(
                text: "Next",
                onTap: (){
                  Navigator.pushNamed(context,'/Age');
                },
                onBackTap: (){
                },
              ),

            ],
        ),
      ),
    ),
    );
  }
}
class GenderIcon extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final bool isSelected;
  const GenderIcon({super.key, required this.icon, required this.title, required this.onTap, required this.isSelected});
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(size.width*0.05),
        decoration: BoxDecoration(
          color: isSelected ?  PrimaryColor :  Colors.transparent,
          //borderRadius: BorderRadius.circular(20),
          shape: BoxShape.circle,

        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Icon(icon,
              size: size.width*0.1,
              color: isSelected ? Colors.black : Colors.white,),
              SizedBox(height: size.height*0.01),
              Text(
                title,
              style: TextStyle(
                color: isSelected ? Colors.black : Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
