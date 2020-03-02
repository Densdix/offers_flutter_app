import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:offers_flutter_app/ui/widget/item/offer_item.dart';

import '../item/offer_item.dart';

class OffersTab extends StatelessWidget{
  final List<Widget> offersList = <Widget>[
    OfferItem(1, "assets/images/offers/three.png", "Название акции lorem", "до 12.01.2019", false),
    OfferItem(2, "assets/images/offers/prostor.png", "Название акции lorem", "до 12.01.2019", false),
    OfferItem(3, "assets/images/offers/foxtrot.png", "Название акции lorem", "до 12.01.2019", true),
    OfferItem(4, "assets/images/offers/three.png", "Название акции lorem", "до 12.01.2019", false),
    OfferItem(5, "assets/images/offers/prostor.png", "Название акции lorem", "до 12.01.2019", false),
    OfferItem(6, "assets/images/offers/foxtrot.png", "Название акции lorem", "до 12.01.2019", true),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 9.0, left: 16.0, right: 16.0, bottom: 16),
      child: Container(
        child: Wrap(
          spacing: 8,
          alignment: WrapAlignment.center,
          children: offersList,
        ),
      ),
    );
  }
}