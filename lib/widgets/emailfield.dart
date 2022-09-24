// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ui/widgets/colors.dart';

class EmailField extends StatelessWidget {
  final IconData iconData;
  final String hintText;
  final bool isPass;
  EmailField({
    required this.iconData,
    required this.hintText,
    required this.isPass,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 30,
        right: 30,
        bottom: 10,
        top: 10,
      ),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      child: TextField(
        obscureText: isPass,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(
            iconData,
            color: Palette.iconColor,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
