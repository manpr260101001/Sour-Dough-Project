import 'package:flutter/material.dart';
import 'package:sour_dough/screens/about_screen.dart';

class MenuButtons extends StatelessWidget {
  final String heading;
  final Widget destination;

  const MenuButtons({
    super.key,
    required this.destination,
    required this.heading,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(36.0),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        },
        child: Text(
          heading,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
