import 'package:flutter/material.dart';
import 'package:qr_code/Core/Utils/App_Colors.dart';

class Settings_Icon extends StatelessWidget {
  const Settings_Icon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height:40,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryColor,
            offset: Offset(1, 1),
            blurRadius: 7,
          )
        ],
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(Icons.format_align_right_rounded, color:AppColors.primaryColor,size: 20,),
      ),
    );
  }
}
