import 'package:flutter/material.dart';
import 'package:food_ninja_ui/constants.dart';
import 'package:food_ninja_ui/screens/forgot%20password/forgotpassword.dart';
import 'package:food_ninja_ui/screens/register%20screen/register.dart';
import 'package:food_ninja_ui/size_config.dart';
import 'package:food_ninja_ui/widgets/default_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const String routeName = 'login-screen';

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
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(25),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(47),
                ),
                Image.asset(
                  'assets/images/Logo.png',
                  height: getProportionateScreenHeight(203),
                  width: 188,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(60),
                ),
                Text(
                  'Login To Your Account',
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(20),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(40),
                ),
                TextFormField(
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
                  height: getProportionateScreenHeight(12),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(28),
                    ),
                    hintText: 'Password',
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
                Text(
                  'Or Continue With',
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(12),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: getProportionateScreenHeight(57),
                      width: getProportionateScreenWidth(152),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.grey.shade300,
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: getProportionateScreenWidth(22),
                          ),
                          Image.asset(
                            'assets/images/facebook.png',
                            height: getProportionateScreenHeight(25),
                            width: getProportionateScreenWidth(25),
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(13),
                          ),
                          Text(
                            'Facebook',
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(14),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(21),
                    ),
                    Container(
                      height: getProportionateScreenHeight(57),
                      width: getProportionateScreenWidth(152),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.grey.shade300,
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: getProportionateScreenWidth(22),
                          ),
                          Image.asset(
                            'assets/images/google.png',
                            height: getProportionateScreenHeight(25),
                            width: getProportionateScreenWidth(25),
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(13),
                          ),
                          Text(
                            'Google',
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(14),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                InkWell(
                  onTap: () => Navigator.pushNamed(
                      context, ForgotPasswordScreen.routeName),
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: kSecondaryGreen,
                      fontSize: getProportionateScreenWidth(12),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(36),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(141),
                  child: DefaultButton(
                    text: 'Login',
                    press: () {},
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, RegisterScreen.routeName),
                  child: Text(
                    "Don't Have An Account? Register",
                    style: TextStyle(
                      color: kSecondaryGreen,
                      fontSize: getProportionateScreenWidth(12),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(21),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
