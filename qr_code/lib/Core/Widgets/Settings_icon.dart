// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_code/Core/Utils/App_Colors.dart';

class Settings_Icon extends StatelessWidget {
  const Settings_Icon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 45,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 26, 25, 25),
            offset: Offset(2, 2),
            blurRadius: 15,
          ),
        ],
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(7),
      ),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        child: SvgPicture.asset("assets/Images/ri_menu-3-line.svg"),
        onPressed: () {
          GoRouter.of(context).push('/Settings');
        },
      ),
    );
  }
}
