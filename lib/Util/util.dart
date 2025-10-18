import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sour_dough/screens/about_screen.dart';
import 'package:sour_dough/screens/breads.dart';
import 'package:sour_dough/screens/contact_us_screen.dart';
import 'package:sour_dough/widgets/menuButtons/iconButtons.dart';
import '../screens/menu_screen.dart';
import '../widgets/menuButtons/menuButtons.dart';

class Util {
  static PreferredSizeWidget? getAppBar() {
    return AppBar(
      toolbarHeight: 120,
      backgroundColor: Color(0xFF738a6e),
      title: Image.asset("assets/sourdough_logo.jpeg", height: 200, width: 200),
      centerTitle: false,
      actions: [
        MenuButtons(heading: "About", destination: AboutScreen()),
        MenuButtons(heading: "Menu", destination: MenuScreen()),
        MenuButtons(heading: "Breads", destination: BreadScreen()),
        MenuButtons(heading: "Contacts", destination: ContactUsScreen()),
      ],
    );
  }

  static SingleChildScrollView getAppBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/sourdough_bread.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 50),
          SizedBox(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 100,
                    bottom: 80,
                    left: 100,
                    right: 50,
                  ),
                  child: Text(
                    " - Our Grade of Bread",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Deep Golden Brown Color",
                          style: GoogleFonts.lobster(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF738a6e),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Impeccable and Well-Formed",
                          style: GoogleFonts.lobster(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF738a6e),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Variety of Air Pockets or Cells",
                          style: GoogleFonts.lobster(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF738a6e),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //SizedBox(height: 100),
          SizedBox(
            height: 500,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(40),
                  child: Container(
                    height: 450,
                    width: 450,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/baking.jpg"),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 600,
                  child: Text(
                    "Baking sourdough bread involves a natural fermentation process using a wild yeast starter. First, the active starter is mixed with flour and water in a step called autolysis, followed by the addition of salt. The dough then undergoes bulk fermentation for several hours, during which it is stretched and folded to build strength. After fermenting, the dough is pre-shaped, rested, and then shaped again before a final proof, either at room temperature or in the fridge overnight for better flavor. The bread is then baked at a high temperature with steam to develop a crisp crust, and finally, it must cool completely before slicing.",
                    style: TextStyle(fontSize: 19),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          //SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 500, bottom: 50, top: 50),
            child: SizedBox(
              child: Row(
                children: [
                  IconButtons(
                    destination: AboutScreen(),
                    icon: FontAwesomeIcons.facebook,
                    color: Colors.blue,
                  ),
                  IconButtons(
                    destination: AboutScreen(),
                    icon: FontAwesomeIcons.instagram,
                    color: Colors.pink,
                  ),
                  IconButtons(
                    destination: AboutScreen(),
                    icon: FontAwesomeIcons.twitter,
                    color: Colors.blue,
                  ),
                  IconButtons(
                    destination: AboutScreen(),
                    icon: FontAwesomeIcons.linkedin,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
