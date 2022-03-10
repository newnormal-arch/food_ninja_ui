import 'package:flutter/material.dart';
import '../../../size_config.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    Key? key,
    required this.textHeading,
    required this.textSubHeading,
    required this.image,
  }) : super(key: key);
  final String? textHeading, textSubHeading, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          image!,
          height: getProportionateScreenHeight(434),
          width: double.infinity,
        ),
        SizedBox(
          height: getProportionateScreenHeight(39),
        ),
        Text(
          textHeading!,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(22),
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        Text(
          textSubHeading!,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(12),
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
