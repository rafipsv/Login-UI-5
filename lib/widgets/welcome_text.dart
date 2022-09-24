// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  final BuildContext context;
  final String proccessText;
  final String congoText;
  WelcomeText({
    required this.context,
    required this.proccessText,
    required this.congoText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                congoText,
                style: TextStyle(
                    letterSpacing: 1.5,
                    color: Colors.yellow[700],
                    fontSize: 25,
                    fontWeight: FontWeight.w200),
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                "Rizona ",
                style: TextStyle(
                    letterSpacing: 1,
                    color: Colors.yellow[700],
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            proccessText,
            style: TextStyle(
                letterSpacing: 1.5, color: Colors.white, fontSize: 16),
          )
        ],
      ),
    );
  }
}
