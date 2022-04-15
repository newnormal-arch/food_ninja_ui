import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../size_config.dart';
import '../../widgets/default_button.dart';
import '../login screen/login.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  static const String routeName = 'register-screen';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isPasswordEightCharacters = false;
  bool _isEmailValid = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  onPasswordChanged(String password) {
    setState(() {
      _isPasswordEightCharacters = false;
      if (password.length >= 8) _isPasswordEightCharacters = true;
    });
  }

  onEmailChanged(String email) {
    setState(() {
      _isEmailValid = false;
      if (EmailValidator.validate(email)) _isEmailValid = true;
    });
  }

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
                  'Sign Up For Free',
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
                    hintText: 'Full Name',
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
                  height: getProportionateScreenHeight(12),
                ),
                TextFormField(
                  obscureText: true,
                  controller: _passwordController,
                  onChanged: (password) => onPasswordChanged(password),
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
                  height: getProportionateScreenHeight(19),
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
                  height: getProportionateScreenHeight(10),
                ),
                Row(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      width: getProportionateScreenWidth(20),
                      height: getProportionateScreenHeight(20),
                      decoration: BoxDecoration(
                          color: _isPasswordEightCharacters
                              ? kPrimaryGreen
                              : Colors.transparent,
                          border: _isPasswordEightCharacters
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
                    const Text("Password has at least 8 characters")
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(30),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(141),
                  child: DefaultButton(
                    text: 'Create Account',
                    press: () {},
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, LoginScreen.routeName),
                  child: Text(
                    "Already have an account? Login",
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
