import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_code/Core/Utils/App_Assets.dart';
import 'package:qr_code/Core/Utils/App_Colors.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/Widgets/GenerateQr_Buttom.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/Widgets/customTextFormField.dart';

class TextfieldcardContainer extends StatelessWidget {
  const TextfieldcardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    var heightScreen = MediaQuery.of(context).size.height;
    return Container(
      width: widthScreen * 0.8,
      height: heightScreen * 0.4,
      decoration: BoxDecoration(
        color: Color.fromARGB(128, 39, 39, 40),
        borderRadius: BorderRadius.circular(12),
        border: Border.symmetric(
          horizontal: BorderSide(color: AppColors.primaryColor, width: 2),
        ),
      ),
      child: Column(
        children: [
          Spacer(flex: 2,),
          SvgPicture.asset(AppAssets.TextIcone1,height: 60,),
          Spacer(flex: 2,),
          Customtextformfield(label: "Text", hintText: "Enter your text", maxLines: 1,ScreenRatio: 0.65,),
          Spacer(flex: 3,),
          GenerateqrButtom(onpressed: (){}),

          Spacer(flex: 3,)

        ],
      ),
    );
  }
}
