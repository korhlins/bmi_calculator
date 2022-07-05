import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, this.cardChild, this.gestureDetector});

  final Color colour;
  final Widget? cardChild;
  final Function()? gestureDetector;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gestureDetector,
      child: Container(
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: const EdgeInsets.all(15.0),
        child: cardChild,
      ),
    );
  }
}
