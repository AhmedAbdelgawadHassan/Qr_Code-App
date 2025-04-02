// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:qr_code/Core/Utils/App_Colors.dart';

class CustomBottomBar extends StatelessWidget {
  final VoidCallback mainButtonOnTap;
  final VoidCallback GenerateOnTap;
  final VoidCallback HistoreyOnTap;

  const CustomBottomBar(
      {super.key,
      required this.mainButtonOnTap,
      required this.GenerateOnTap,
      required this.HistoreyOnTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
        color: Color(0xff333333),
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: AppColors.primaryColor, width: 2),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          // Row for side icons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Generate Button
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: GenerateOnTap,
                      icon: Icon(Icons.qr_code, color: Colors.white)),
                  Text('Generate',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ],
              ),
              // Placeholder for center button space
              SizedBox(width: 40), // To leave space for center button
              // History Button
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: HistoreyOnTap,
                      icon: Icon(Icons.history, color: Colors.white)),
                  Text('History',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
          // Center Glowing Button (Scan Button)
          Positioned(
            top: -60, // To make it go out of the container
            child: GestureDetector(
              onTap: mainButtonOnTap,
              child: Container(
                decoration: BoxDecoration(),
                // child: Image(
                //   image: AssetImage(
                //     'assets/images/Group 32.png',
                //   ),
                // ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
