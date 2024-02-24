import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const MyButton({
    super.key,
    required this.text, this.onTap,
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          // color: Color.fromARGB(109, 140, 94, 91),
          color: Color.fromARGB(210, 243, 196, 139),
          // borderRadius: BorderRadius.circular(40)
          borderRadius: BorderRadius.circular(10)
          ),
        padding: EdgeInsets.all(1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //text
            Text(text,
            style: TextStyle(color: Colors.black),
            ),
            const SizedBox(width: 0, height: 0,),
            //icon
            Icon(Icons.arrow_forward,
            color: Colors.white
            ),
          ],
        ),
      ),
    );
  }
}
