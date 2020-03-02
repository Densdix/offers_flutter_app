import 'package:flutter/cupertino.dart';
import 'package:offers_flutter_app/ui/widget/item/offer_item.dart';

import '../item/offer_item.dart';

class OffersTab extends StatelessWidget{
  final List<Widget> offersList = <Widget>[
    OfferItem(1, "assets/images/offers-items/three.png", "Название акции lorem", "до 12.01.2019"),
    OfferItem(2, "assets/images/offers-items/prostor.png", "Название акции lorem", "до 12.01.2019"),
    OfferItem(3, "assets/images/offers-items/foxtrot.png", "Название акции lorem", "до 12.01.2019"),
    OfferItem(4, "assets/images/offers-items/three.png", "Название акции lorem", "до 12.01.2019"),
    OfferItem(5, "assets/images/offers-items/prostor.png", "Название акции lorem", "до 12.01.2019"),
    OfferItem(6, "assets/images/offers-items/foxtrot.png", "Название акции lorem", "до 12.01.2019"),

  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 8.0, left: 10.0, right: 10.0),
      child: Center(
        child: Wrap(
          children: offersList,
        ),
      ),
    );
  }

  List<Widget> offerItemsGenerator(){

  }
}