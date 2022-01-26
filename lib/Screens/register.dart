// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marriage/exports.dart';

class RegisterScree extends StatelessWidget {
  const RegisterScree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 130, bottom: 5),
              child: Center(
                  child: Text(
                "Marriage",
                style: marriage,
              )),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: const [
                    Text(
                      "A place to share knowledge and understand better about",
                      style: textStyle1,
                    ),
                    Text("the marriage life.", style: textStyle1),
                  ],
                )),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      Text(
                        "By Clicking Log In, you agree with our Terms and Conditions.",
                        style: textStyle2,
                      ),
                      Text(
                        "we process your data in our Privacy Policy and Cookies Policy.and",
                        style: textStyle3,
                      ),
                      Text(
                        "Cookies Policy.",
                        style: textStyle4,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const GoogleRegister()));
                      },
                      child: containerWidget(
                        icon: FontAwesomeIcons.google,
                        colors: color,
                        text: 'REGISTER WITH GOOGLE',
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    //
                  ),
                  sizedBox,
                  Padding(
                    padding: EdgeInsets.only(right: 15, left: 15),
                    child: containerWidgetBlue(
                      icon: FontAwesomeIcons.facebook,
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                      colors: color,
                      text: "REGISTER WITH FACEBOOK",
                    ),
                  ),
                  sizedBox,
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PhoneLoginScreen()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(right: 15, left: 15),
                      child: containerWidget(
                        icon: FontAwesomeIcons.phoneAlt,
                        text: "REGISTER WITH NUMBER",
                        colors: color,
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
