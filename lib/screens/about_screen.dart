import 'package:flutter/material.dart';

import '../Util/util.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Util.getAppBar(context),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 100),
            Row(
              children: [
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      children: [
                        Text("About Us"),
                        Text(
                          "Our Bakery and Handcrafted Products are one of the highest quality.",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
