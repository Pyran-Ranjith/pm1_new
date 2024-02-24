import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pm1_new/components/button.dart';

class Pm1WelcomeScreen extends StatelessWidget {
  const Pm1WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 10, 10, 10),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 25,
              ),
              //shop name
              // Text(
              //   "SUSHI MAN",
              //   style: GoogleFonts.dmSerifDisplay(
              //     fontSize: 10,
              //     color: Colors.white,
              //   ),
              // ),

              SizedBox(
                height: 15,
              ),
              //icon
              Padding(
                padding: const EdgeInsets.all(50.0),
                child:
                    Image.asset('lib/images/pm1_welcome_screen_tag_1a.png'),
              ),
              //title
              // Text(
              //   'THE TASTE OF JAPANESE FOOD',
              //   style: GoogleFonts.dmSerifDisplay(
              //     fontSize: 17,
              //     color: Colors.white,
              //   ),
              // ),
              //sub title
              SizedBox(
                height: 10,
              ),
              // Text(
              //   "Feel the taste of the most popular Japanease food from anywahare anytime",
              //   style: TextStyle(
              //     color: Colors.grey,
              //     height: 2,
              //   ),
              // ),
              //get started button
              MyButton(
                text: "Get Started",
                onTap: () {
                  //go to menu page
                  Navigator.pushNamed(context, '/pm1homescreen');
                },
              )
            ]),
      ),
    );
  }
}
