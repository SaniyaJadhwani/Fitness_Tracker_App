import 'package:fitness_tracker/screens/GenderScreen/GenderScreen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {

  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  bool isLastPage=false;
  PageController controller= PageController();
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          PageView(
            controller: controller,
            onPageChanged: (index){setState(() {

              isLastPage = index == 2;
            });},
            children: [
              _buildPageIndicator(text:'Meet Your Coach ,\nStart Your Journey',imageAsset: 'assets/OnBoardingImages/OnBoarding1.jpg',),
              _buildPageIndicator(text:'Create a Workout Plan,\nTo Stay Fit',imageAsset: 'assets/OnBoardingImages/OnBoarding2.jpeg',),
              _buildPageIndicator(text:'Action is the\nKey to Success',imageAsset: 'assets/OnBoardingImages/OnBoarding3.jpg',)
            ],
          ),
          isLastPage
          ? const SizedBox.shrink()
          :Positioned(
            top: size.height*0.05,
            right: size.width*0.05,
            child:TextButton(onPressed: (){
            controller.animateToPage(2, duration: const Duration(milliseconds: 300), curve: Curves.ease);
          },
            child: const Text('Skip',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
            ),
          ),
          ),
          isLastPage
          ? Positioned(
            left: size.width*0.25,
              right: size.width*0.25,
              bottom: size.height*0.09,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5,horizontal:10),
                width: size.width,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(208, 253, 62, 1),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: (){
                          Navigator.pushNamed(context,'/Gender');
                        },
                        child: const Text('Get Started',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),)),
                    SizedBox(width: 5),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    )
                  ],
                ),
              ),):const SizedBox.shrink(),
          Positioned(
            bottom: size.height*0.03,
              left: size.width*0.42,
              child: SmoothPageIndicator(
            controller: controller,
            count: 3,
            effect: const ExpandingDotsEffect(
              dotHeight: 10,
              dotWidth: 10,
              dotColor: Colors.grey,
              activeDotColor: Color.fromRGBO(208, 253, 62, 1),
            ),
          ))
        ],
      ),
    );
  }
  Widget _buildPageIndicator({required String text,required String imageAsset})
  {
    var size=MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset(
          imageAsset,
        height: size.height*0.6,
        width: size.width,
        fit: BoxFit.cover),
        Positioned(
          bottom:0,
          child: Container(
          height:size.height*0.4,
          width: size.width,
          child: Center(
            child: Text(text.toUpperCase(),
            style: TextStyle(
             color: Colors.white,
             fontSize: 30.0,
             fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,),
          ),
        ),),
      ],
    );
  }
}
