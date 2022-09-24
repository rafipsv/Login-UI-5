// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ForwardButton extends StatelessWidget {
  const ForwardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
            // ignore: prefer_const_literals_to_create_immutables
            colors: [
              Color(0xfff7bb97),
              Color(0xffdd5e89),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.arrow_forward,
          color: Colors.white,
          size: 28,
        ),
      ),
    );
  }
}
