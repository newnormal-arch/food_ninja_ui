import 'package:flutter/material.dart';
import '../constants.dart';
import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      child: Text(
        text,
      ),
      style: ElevatedButton.styleFrom(
        primary: kPrimaryGreen,
        textStyle: TextStyle(
          fontSize: getProportionateScreenWidth(14),
          fontWeight: FontWeight.w600,
        ),
        minimumSize: Size(
          getProportionateScreenWidth(322),
          getProportionateScreenHeight(57),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
