import 'package:flutter/material.dart';

import '../Util/util.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Util.getAppBar(context),
      body: Container(color: Colors.orangeAccent),
    );
  }
}
