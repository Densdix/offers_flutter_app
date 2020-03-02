import 'package:flutter/cupertino.dart';
import 'package:offers_flutter_app/ui/widget/item/offer_item.dart';

class OffersTab extends StatelessWidget{
  final List<Widget> offersList = <Widget>[
    OfferItem(1, "assets/images/offers-items/three.png", "test", "test"),
    OfferItem(1, "assets/images/offers-items/prostor.png", "test", "test"),
    OfferItem(1, "assets/images/offers-items/three.png", "test", "test"),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(top: 0, left: 0.0, right: 0.0),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        children: offersList,
      ),
    );
  }
}