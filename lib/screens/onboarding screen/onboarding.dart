import 'package:flutter/material.dart';
import 'package:food_ninja_ui/screens/login%20screen/login.dart';
import 'package:food_ninja_ui/size_config.dart';
import 'package:food_ninja_ui/widgets/default_button.dart';
import '../../constants.dart';
import 'components/onboarding_content.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);
  static const String routeName = 'onboarding-screen';

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPage = 0;
  List<Map<String, String>> onboardingData = [
    {
      "textHeading": "Find Your Comfort\n Food Here",
      "textSubHeading":
          "Here You Can Find A Chef Or Dish For Every\n Taste and Colour. Enjoy!",
      "image": "assets/images/Onboard_1.png",
    },
    {
      "textHeading": "Food Ninja Is Where Your\n Comfort Food Lives",
      "textSubHeading":
          "Enjoy A Fast And Smooth Food Delivery At Your Doorstep\n Your Doorstep",
      "image": "assets/images/Onboard_2.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Background.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(56),
            ),
            Expanded(
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: onboardingData.length,
                itemBuilder: (context, index) => OnboardingContent(
                  image: onboardingData[index]["image"],
                  textHeading: onboardingData[index]['textHeading'],
                  textSubHeading: onboardingData[index]['textSubHeading'],
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                onboardingData.length,
                (index) => buildDot(index: index),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            SizedBox(
              width: getProportionateScreenWidth(157),
              child: DefaultButton(
                text: 'Next',
                press: () {
                  Navigator.pushReplacementNamed(
                      context, LoginScreen.routeName);
                },
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(50),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kSecondaryGreen : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
