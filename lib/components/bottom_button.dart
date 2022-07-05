import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.onPressed, this.textName});

  final Function()? onPressed;
  final String? textName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.only(bottom: 20.0),
        margin: const EdgeInsets.only(top: 10.0),
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        child: Center(child: Text(textName!, style: kLargeButtonTextStyle)),
      ),
    );
  }
}
