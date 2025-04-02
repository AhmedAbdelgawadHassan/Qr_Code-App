import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_code/Core/Utils/App_Colors.dart';
import 'package:qr_code/Core/utils/App_Assets.dart';
import 'package:qr_code/Features/Onboarding/Presentation/Views/Widgets/Getstartedcircularbutton.dart';

class Onboarding3View extends StatelessWidget {
  const Onboarding3View({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Stack(
        children: [
          Column(
            children: [
              Spacer(flex: 8),
              SvgPicture.asset(AppAssets.logo1),
              Spacer(flex: 2),
              Text("Get Started", style: TextStyle(fontSize: 45)),
              Spacer(flex: 1),
              Text(
                "Go and enjoy our features for free and\n make your life easy with us.",
                style: TextStyle(
                  fontFamily: 'Itim',
                  fontSize: 17,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
              Spacer(flex: 1),
              SvgPicture.asset("assets/Images/Intersect (6).svg", width: width),
            ],
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: Getstartedcircularbutton(
              ontap: () {
                context.go('/Home');
              },
            ),
          ),
        ],
      ),
    );
  }
}
