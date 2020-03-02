import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OfferItem extends StatelessWidget {

  final int id;
  final String image;
  final String title;
  final String date;


  OfferItem(this.id, this.image, this.title, this.date);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 1,
        //margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
        child: Container(
          child: Image.asset(image),
        ),
      ),
    );
  }

}