import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_code/Core/Utils/App_Colors.dart';

class Letstartbutton extends StatelessWidget {
  const Letstartbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go('/Onboarding2');
      },
      child: Container(
        padding: EdgeInsets.only(right: 15),
          alignment: Alignment.center,
          width: 320,
          height: 60,
          decoration: BoxDecoration(color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Let's Start",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 70,
              ),
              Icon(
                Icons.arrow_forward,
                color: AppColors.primaryColor,
                size: 30,
              )
            ],
          )),
    );
  }
}
