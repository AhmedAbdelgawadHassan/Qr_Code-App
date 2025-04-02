// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:qr_code/Core/Utils/App_Colors.dart';

class CustomBottomBar extends StatelessWidget {
  final VoidCallback mainButtonOnTap;
  final VoidCallback GenerateOnTap;
  final VoidCallback HistoreyOnTap;

  const CustomBottomBar({
    super.key,
    required this.mainButtonOnTap,
    required this.GenerateOnTap,
    required this.HistoreyOnTap,
  });
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
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                onPressed: GenerateOnTap,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.qr_code, color: Colors.white, size: 30),
                    Text(
                      'Generate',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(width: 40), // To leave space for center button
              // History Button
              MaterialButton(
                onPressed: HistoreyOnTap,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.history, color: Colors.white, size: 30),
                    Text(
                      'History',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Center Glowing Button (Scan Button)
          Positioned(
            top: -60, // To make it go out of the container
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)
              ),
              onPressed: mainButtonOnTap,
              child: Image.asset("assets/Images/Group 32 (1).png"),
            ),
          ),
        ],
      ),
    );
  }
}
