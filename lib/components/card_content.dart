import 'package:flutter/material.dart';

class CardIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  CardIcon({@required this.icon, @required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          label,
        ),
      ],
    );
  }
}
