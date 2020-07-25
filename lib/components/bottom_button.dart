import 'package:flutter/material.dart';
import '../constants.dart';

//Bottom Pink Container with Gesture
class ReusableBottomContainer extends StatelessWidget {
  final String text;
  final Function onTap;

  ReusableBottomContainer({
    @required this.text,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        width: double.infinity,
      ),
    );
  }
}
