import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:food_ninja_ui/screens/login%20screen/login.dart';
import 'package:food_ninja_ui/size_config.dart';

import '../../constants.dart';
import '../../widgets/default_button.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);
  static const String routeName = "forgot-password";

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  bool _isEmailValid = false;
  final _emailController = TextEditingController();

  onEmailChanged(String email) {
    setState(() {
      _isEmailValid = false;
      if (EmailValidator.validate(email)) _isEmailValid = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black54,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Background.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(25),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(103),
                ),
                Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(25),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Text(
                  'Enter your email below to receive a password reset link',
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(12),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(60),
                ),
                TextFormField(
                  controller: _emailController,
                  onChanged: (email) => onEmailChanged(email),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(28),
                    ),
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      fontSize: getProportionateScreenWidth(14),
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.grey.shade100,
                        width: 0.5,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Row(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      width: getProportionateScreenWidth(20),
                      height: getProportionateScreenHeight(20),
                      decoration: BoxDecoration(
                          color: _isEmailValid
                              ? kPrimaryGreen
                              : Colors.transparent,
                          border: _isEmailValid
                              ? Border.all(color: Colors.transparent)
                              : Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                          size: getProportionateScreenWidth(14),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(20),
                    ),
                    const Text("Email is valid")
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(350),
                ),
                Center(
                  child: SizedBox(
                    width: getProportionateScreenWidth(141),
                    child: DefaultButton(
                      text: 'Reset',
                      press: () {
                        if (EmailValidator.validate(_emailController.text)) {
                          EasyLoading.showSuccess('Reset Link Sent');
                          Navigator.pushReplacementNamed(
                              context, LoginScreen.routeName);
                        } else {
                          EasyLoading.showError('Email is not Valid');
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
