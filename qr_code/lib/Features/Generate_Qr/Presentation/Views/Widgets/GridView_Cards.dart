// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:qr_code/Core/Utils/App_Assets.dart';
import 'package:qr_code/Features/Generate_Qr/Data/Models/CardClass.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/Widgets/customCard.dart';

class Gridview_Cards extends StatelessWidget {
   Gridview_Cards({super.key});
  List <Cardclass> cards = [
    Cardclass(Text: "Text", image: AppAssets.TextIcone1, onPressed: (){}),
    Cardclass(Text: "Website", image: AppAssets.WesiteIcone1, onPressed: (){}),
    Cardclass(Text: "WI-FI", image: AppAssets.WIFIcon1, onPressed: (){}),
    Cardclass(Text: "Event", image: AppAssets.EventIcon1, onPressed: (){}),
    Cardclass(Text: "Contact", image: AppAssets.ContactsIcon1, onPressed: (){}),
    Cardclass(Text: "Business", image: AppAssets.BusinessIcon1, onPressed: (){}),
    Cardclass(Text: "Location", image: AppAssets.LocationIcon1, onPressed: (){}),
    Cardclass(Text: "Whatsapp", image: AppAssets.WhatsappIcon1, onPressed: (){}),
    Cardclass(Text: "Email", image: AppAssets.EmailIcon1, onPressed: (){}),
    Cardclass(Text: "Twitter", image: AppAssets.TwitterIcon1, onPressed: (){}),
    Cardclass(Text: "Instagram", image: AppAssets.InstagramIcon1, onPressed: (){}),
    Cardclass(Text: "Telephone", image: AppAssets.TelephoneIcon1, onPressed: (){}),
  ];

  @override
  Widget build(BuildContext context) {
    return   Expanded(
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 35,
                      mainAxisSpacing: 65
                    ),
                    itemBuilder:
                        (context, index) => Customcard(
                          cardclass: cards[index],
                        ),
                        itemCount: cards.length,
                  ),
                );
  }
}