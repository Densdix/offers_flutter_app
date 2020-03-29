import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:offers_flutter_app/ui/widget/offer/offer_item.dart';

import 'offer_item.dart';

class OffersTab extends StatelessWidget{
  final List<OfferItem> offersList = [
    OfferItem(1, "assets/images/offers/three.png", "Название акции lorem", "до 12.01.2019"),
    OfferItem(2, "assets/images/offers/prostor.png", "Название акции lorem", "до 12.01.2019"),
    OfferItem(3, "assets/images/offers/foxtrot.png", "Название акции lorem", "до 12.01.2019", wideBanner: true),
    OfferItem(4, "assets/images/offers/three.png", "Название акции lorem", "до 12.01.2019"),
    OfferItem(5, "assets/images/offers/prostor.png", "Название акции lorem", "до 12.01.2019"),
    OfferItem(6, "assets/images/offers/foxtrot.png", "Название акции lorem", "до 12.01.2019", wideBanner: true),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 9.0, left: 16.0, right: 16.0, bottom: 16),
      child: StaggeredGridView.countBuilder(
          shrinkWrap: true,
          primary: false,
          crossAxisCount: 4,
          itemCount: this.offersList.length,
          itemBuilder: (BuildContext context, int index) => this.offersList[index],
          staggeredTileBuilder: (int index) => this.offersList[index].staggeredTile,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
      ),
    );
  }
}