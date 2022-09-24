// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/widgets/checkbox.dart';
import 'package:flutter_ui/widgets/colors.dart';
import 'package:flutter_ui/widgets/emailfield.dart';
import 'package:flutter_ui/widgets/forwardbutton.dart';
import 'package:flutter_ui/widgets/gender.dart';
import 'package:flutter_ui/widgets/welcome_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isSignUp = false;
  bool isCheck = false;
  void checkBox() {
    setState(() {
      isCheck = !isCheck;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Palette.backgroundColor,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                child: FadeInDown(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      "images/header.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                child: FadeInDown(
                  child: Container(
                    color: Palette.activeColor.withOpacity(0.8),
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.08,
                child: FadeInDown(
                  child: WelcomeText(
                    congoText: isSignUp ? "Welcome To " : "Welcome To ",
                    context: context,
                    proccessText:
                        isSignUp ? "Sign Up to Continue" : "Login to Continue",
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.2,
                left: 20,
                right: 20,
                child: FadeInDown(
                  child: Container(
                    padding: EdgeInsets.only(top: 20),
                    height: isSignUp
                        ? MediaQuery.of(context).size.height * 0.58
                        : MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    child: Column(
                      children: [
                        FadeInDown(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: (() {
                                  setState(() {
                                    isSignUp = !isSignUp;
                                  });
                                }),
                                child: Column(
                                  children: [
                                    Text(
                                      "Login",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: isSignUp
                                            ? Palette.textColor2
                                            : Palette.activeColor,
                                      ),
                                    ),
                                    isSignUp ? Container() : IsActive()
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: (() {
                                  setState(() {
                                    isSignUp = !isSignUp;
                                  });
                                }),
                                child: Column(
                                  children: [
                                    Text(
                                      "SignUp",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: isSignUp
                                            ? Palette.activeColor
                                            : Palette.textColor2,
                                      ),
                                    ),
                                    isSignUp ? IsActive() : Container()
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        isSignUp
                            ? FadeInDown(child: SignUp())
                            : FadeInDown(child: Login())
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget IsActive() {
  return Container(
    margin: EdgeInsets.only(top: 5),
    height: 3,
    width: 60,
    color: Colors.yellow[700],
  );
}

Widget Login() {
  return FadeInDown(
    child: Column(
      children: [
        SizedBox(
          height: 15,
        ),
        FadeInDown(
          child: EmailField(
            iconData: Icons.mail,
            hintText: "Email...",
            isPass: false,
          ),
        ),
        FadeInDown(
          child: EmailField(
            iconData: Icons.lock,
            hintText: "Password...",
            isPass: true,
          ),
        ),
        FadeInDown(
          child: Row(
            children: [
              MyCheckBox(),
              Text(
                "Remember Me ",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Palette.activeColor),
              ),
            ],
          ),
        ),
        FadeInDown(
          child: Row(
            children: [
              MyCheckBox(),
              Text(
                "Forgot Password ",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Palette.activeColor),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        FadeInDown(child: ForwardButton()),
      ],
    ),
  );
}

Widget SignUp() {
  return Column(
    children: [
      SizedBox(
        height: 15,
      ),
      FadeInDown(
        child: EmailField(
          iconData: Icons.person,
          hintText: "Username....",
          isPass: false,
        ),
      ),
      FadeInDown(
        child: EmailField(
          iconData: Icons.mail,
          hintText: "Username....",
          isPass: false,
        ),
      ),
      FadeInDown(
        child: EmailField(
          iconData: Icons.lock,
          hintText: "Password...",
          isPass: true,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      FadeInDown(child: Gender()),
      SizedBox(
        height: 6,
      ),
      FadeInDown(
        child: Column(
          children: [
            Text(
              "By accepting our",
              style: TextStyle(
                letterSpacing: 1,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 92, 147, 177),
              ),
            ),
            Text(
              "Terms And Conditions",
              style: TextStyle(
                letterSpacing: 1,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.yellow[700],
              ),
            ),
            Divider(
              height: 3,
              thickness: 1,
              indent: 80,
              endIndent: 80,
              color: Colors.black,
            ),
          ],
        ),
      ),
      SizedBox(
        height: 15,
      ),
      FadeInDown(child: ForwardButton()),
    ],
  );
}
