// ignore_for_file: unused_field, unused_element

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_code/Features/Home/Presentation/views/widgets/AppBar_Icon.dart';
import 'package:qr_code/Features/Home/Presentation/views/widgets/CustomButtonBar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191919),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              width: 360,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xff292929),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [BoxShadow(color: Colors.white, blurRadius: 5)],
              ),
              child: Row(
                children: [
                  Spacer(),
                  AppbarIcon(
                    OnPressed: () {},
                    icon: "assets/Images/clarity_image-gallery-solid.svg",
                  ),
                  Spacer(flex: 3),
                  AppbarIcon(
                    OnPressed: () {},
                    icon: "assets/Images/Vector (41).svg",
                  ),
                  Spacer(flex: 3),
                  AppbarIcon(
                    OnPressed: () {},
                    icon: "assets/Images/material-symbols_flip-camera-ios.svg",
                  ),
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomBar(
        mainButtonOnTap: () {},
        GenerateOnTap: () {},
        HistoreyOnTap: () {},
      ),
    );
  }
}
