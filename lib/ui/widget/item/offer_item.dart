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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        child: Container(
          child: Stack(
            children: <Widget>[
              Image.asset(image),
              Positioned(
                child: Text(
                  title,
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.white),),
                bottom: 25,
                left: 10,
              ),
              Positioned(
                child: Text(date, style: TextStyle(fontSize: 10.0, color: Color.fromRGBO(255, 255, 255, 0.54)),),
                bottom: 10,
                left: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}