import 'package:flutter/material.dart';
import 'package:qr_code/Core/Helpers/BuildCircle_Method.dart';
import 'package:qr_code/Core/Widgets/CustomAppBarCard.dart';
import 'package:qr_code/Core/utils/App_Assets.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/Widgets/TextFieldCard_Container.dart';

class TelephonecardView extends StatelessWidget {
  const TelephonecardView({super.key});

  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff525252),
      body: SingleChildScrollView(
        child: SizedBox(
          height:
              widthScreen, // to prevent error for putting stack inside Column
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: -40,
                right: -140,
                child: buildCircle(
                  430,
                  Color(0xff4F4F4F),
                ), // Method for Building circle
              ),
              Positioned(
                bottom: -40,
                left: -150,
                child: buildCircle(400, Color(0xff4F4F4F)),
              ),
              Positioned(
                top: 60,
                left: 20,
                child: Customappbarcard(text: "Phone"),
              ),
              Positioned(
                top: 200,
                child: TextfieldcardContainer(label: "Phone Number", hintText: "+20**********", maxLines: 1, GenerateQr_Onpressed: (){}, image: AppAssets.TelephoneIcon1, )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
