// ignore_for_file: prefer_const_constructors,

import 'package:flutter/material.dart';
import 'package:flutter_ui/widgets/colors.dart';

class Gender extends StatefulWidget {
  const Gender({super.key});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: (() {
              setState(
                () {
                  isMale = true;
                },
              );
            }),
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: isMale == true ? Palette.textColor1 : Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.male,
                color: isMale == true ? Colors.white : Colors.black,
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: (() {
              setState(() {
                isMale = true;
              });
            }),
            child: Text(
              "Male",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 92, 147, 177),
              ),
            ),
          ),
          SizedBox(
            width: 40,
          ),
          GestureDetector(
            onTap: (() {
              setState(() {
                isMale = false;
              });
            }),
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: isMale == true ? Colors.white : Palette.textColor1,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.female,
                color: isMale == true ? Palette.textColor1 : Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: (() {
              setState(() {
                isMale = false;
              });
            }),
            child: Text(
              "Female",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 92, 147, 177),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
