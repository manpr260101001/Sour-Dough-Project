import 'package:flutter/material.dart';

import '../Util/util.dart';

class BreadScreen extends StatelessWidget {
  const BreadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Util.getAppBar(context),
      body: Container(color: Colors.pinkAccent),
    );
  }
}
