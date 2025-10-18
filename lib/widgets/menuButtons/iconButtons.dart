import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sour_dough/screens/about_screen.dart';

class IconButtons extends StatelessWidget {
  final IconData? icon;
  final Widget destination;
  final Color color;

  const IconButtons({
    super.key,
    required this.destination,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      child: Icon(
        icon,
        color: color, // Customize color
        size: 36.0,
      ),
    );
  }
}
