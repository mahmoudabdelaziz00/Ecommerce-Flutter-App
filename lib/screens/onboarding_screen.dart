import 'package:ecommerce_s1e/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatelessWidget {

  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ),
      bodyTextStyle: TextStyle(fontSize: 19,),
      bodyPadding: EdgeInsets.fromLTRB(16, 0 , 16, 16),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "Shop Now",
          body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
          image: Image.asset("images/splash1.png"),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Big Discount",
          body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
          image: Image.asset("images/splash2.png"),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Free Delivery",
          body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
          image: Image.asset("images/splash3.png"),
          decoration: pageDecoration,
          footer: Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
              top: 50,
            ),
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>HomeScreen()),
                );
              },
              child: Text(
                "Get Started",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,

                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(55),
                backgroundColor: Color(0xFFEF6969),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )
              ),
            ),
          ),
        ),
      ],
      showDoneButton: false,
      showSkipButton: false,
      showBackButton: true,
      back: Text(
        "Back",
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: Color(0xFFEF6969),
        ),
      ),
      next: Text(
        "Next",
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: Color(0xFFEF6969),
        ),
      ),
      onDone: (){},
      onSkip: (){},
      dotsDecorator: DotsDecorator(
        size: Size.square(10),
        activeSize: Size(20,10),
        activeColor: Color(0xFFEF6969),
        color: Colors.black26,
        spacing: EdgeInsets.symmetric(horizontal: 3,),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
