// ignore_for_file: unused_field, unused_element

import 'package:flutter/material.dart';
import 'package:qr_code/Core/Utils/App_Colors.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/Generate_view.dart';
import 'package:qr_code/Features/History/Presentation/Views/History_View.dart';
import 'package:qr_code/Features/Home/Presentation/views/home_view.dart';

class Mainview extends StatefulWidget {
  const Mainview({super.key});

  @override
  State<Mainview> createState() => _MainviewState();
}

class _MainviewState extends State<Mainview> {
  int SelectedIndex = 0;
  final PageController pageController = PageController();
  List<Widget> pages = [GenerateView(), HomeView(), HistoryView()];
  void onItemTapped(int index) {
    pageController.jumpToPage(index);
    setState(() {
      SelectedIndex = index;
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191919),
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            SelectedIndex = index;
          });
        },
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.secondaryColor,
        fixedColor: AppColors.primaryColor,
        unselectedItemColor: Colors.white,
        iconSize: 25,
        unselectedLabelStyle: TextStyle(color: Colors.white),
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w800,
          color: Colors.pink,
          fontSize: 19,
        ),
        selectedIconTheme: IconThemeData(size: 35),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.qr_code_2), label: "Generate"),
          BottomNavigationBarItem(icon: Icon(Icons.camera_alt),label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "History"),
        ],
        currentIndex: SelectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
