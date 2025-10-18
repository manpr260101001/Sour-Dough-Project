import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sour_dough/screens/about_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class IconButtons extends StatelessWidget {
  final IconData? icon;
  final String url;
  final Color color;

  const IconButtons({
    super.key,
    required this.url,
    required this.icon,
    required this.color,
  });

  Future<void> _launchUrl() async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: _launchUrl,
      icon: Icon(
        icon,
        color: color, // Customize color
        size: 36.0,
      ),
    );
  }
}
