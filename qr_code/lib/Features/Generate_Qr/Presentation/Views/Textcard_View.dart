import 'package:flutter/material.dart';
import 'package:qr_code/Core/Helpers/BuildCircle_Method.dart';
import 'package:qr_code/Core/Widgets/CustomAppBarCard.dart';

class TextcardView extends StatelessWidget {
  const TextcardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff525252),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: -40,
            right: -140,
            child: buildCircle(430, Color(0xff4F4F4F)),  // Method for Building circle
          ),
          Positioned(
            bottom: -40,
            left: -150,
            child: buildCircle(400, Color(0xff4F4F4F)),
          ),
          Positioned(
            top: 50,
             left:50,
              child: Customappbarcard(text: "Text",)),
        ],
      ),
    );
  }
}
