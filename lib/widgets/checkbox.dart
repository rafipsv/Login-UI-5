// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ui/widgets/colors.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  State<MyCheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<MyCheckBox> {
  bool ischeck = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25),
      child: Checkbox(
        activeColor: Palette.activeColor,
          value: ischeck,
          onChanged: (value) {
            setState(() {
              ischeck = !ischeck;
            });
          }),
    );
  }
}
