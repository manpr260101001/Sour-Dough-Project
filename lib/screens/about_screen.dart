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
            Row(
              children: [
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(80.0),
                    child: SizedBox(
                      width: 500,
                      child: Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Column(
                          children: [
                            Text(
                              "About Us",
                              style: TextStyle(
                                color: Color(0xFF738a6e),
                                fontSize: 30,
                              ),
                            ),
                            SizedBox(height: 30),
                            Text(
                              "Our Bakery and Handcrafted Products are one of the highest quality.",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 450,
                  width: 450,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/baking.jpg"),
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
