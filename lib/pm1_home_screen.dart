import 'package:flutter/material.dart';

class Pm1_Home_Screen extends StatelessWidget {
  const Pm1_Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Screen-1',
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/images/pm1_home_screen.jpg'),
                fit: BoxFit.fill)),
      ),
    );
  }
}
