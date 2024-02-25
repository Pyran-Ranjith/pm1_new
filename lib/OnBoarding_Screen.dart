import 'package:flutter/material.dart';
// import 'package:pm1_new/home_page.dart';
import 'package:pm1_new/intro_screens/intro_page_1.dart';
import 'package:pm1_new/intro_screens/intro_page_2.dart';
import 'package:pm1_new/intro_screens/intro_page_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'pm1_welcome_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key, required String title});

  @override
  State<OnBoardingScreen> createState() => _OnBoarding_ScreenState();
}

class _OnBoarding_ScreenState extends State<OnBoardingScreen> {
  PageController controller = PageController();
  // controler to keep track at wich page we're on
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            onPageChanged: (index) => setState(() {
              onLastPage = (index == 2);
            }),
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),

          // dot indicators
          Container(
              alignment: const Alignment(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //--------------BGIN-----------------------
                  // skip
                  GestureDetector(
                      onTap: () {
                         controller.nextPage(
                             duration: const Duration(milliseconds: 500),
                             curve: Curves.easeIn);

                        controller.jumpToPage(-1);
                      },
                      // child: const Text("main")),
                      child: const Text("")),

                  // dot indicator
                  SmoothPageIndicator(controller: controller, count: 3),

                  // done ---------------------------------
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            // controller.nextPage(
                            //     duration: Duration(milliseconds: 500),
                            //     curve: Curves.easeIn
                            //     );
                            // controller.jumpToPage(2);

                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              // return const HomePage();
                              // return const Pm1_Home_Screen();
                              return const Pm1WelcomeScreen();
                            }));
                          },
                          child: const Text("done"),
                        )
                      : GestureDetector(
                          onTap: () {
                            controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                            // controller.jumpToPage(0);
                          },
                          child: const Text("next"),
                        )
//--------------END-----------------------
                ],
              ))
        ],
      ),
    );
  }

  Set<Function> get xx {
    return {setState};
  }
}
