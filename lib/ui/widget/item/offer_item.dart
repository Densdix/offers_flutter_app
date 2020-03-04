import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class OfferItem extends StatelessWidget {

  final int id;
  final String image;
  final String title;
  final String date;
  final bool wideBanner;
  StaggeredTile staggeredTile;

  OfferItem(this.id, this.image, this.title, this.date, {this.wideBanner = false}){
    if(wideBanner)
      this.staggeredTile = StaggeredTile.count(4, 2);
    else
      this.staggeredTile = StaggeredTile.count(2, 3);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fill
        )
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
              height: wideBanner == false ? 112.0 : 90.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  gradient: LinearGradient(
                      colors: [Color.fromRGBO(0, 0, 0, 0), Color.fromRGBO(0, 0, 0, 0.8)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                )
              ),
            ),
            bottom: 0,
            left: 0,
            right: 0,
          ),
          Positioned(
            child: Container(
              width: wideBanner == false ? 130 : 300,
              child: Text(
                title,
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: "Google Sans"), ),
            ),
            bottom: 27,
            left: 10,
          ),
          Positioned(
            child: Text(date, style: TextStyle(fontSize: 10.0, color: Color.fromRGBO(255, 255, 255, 0.54), fontFamily: "Google Sans"),),
            bottom: 9,
            left: 10,
          ),
        ],
      ),
      padding: EdgeInsets.only(top: 7),
    );
  }
}