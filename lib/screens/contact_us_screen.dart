import 'package:flutter/material.dart';

import '../Util/util.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Util.getAppBar(context),
      body: Container(color: Colors.blueAccent),
    );
  }
}
