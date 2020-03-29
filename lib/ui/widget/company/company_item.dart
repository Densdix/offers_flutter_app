import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:offers_flutter_app/ui/screen/company_detail_screen.dart';
import 'package:offers_flutter_app/ui/widget/offer/offers_tab.dart';

class CompanyItem extends StatelessWidget {
  final String title;
  final Color color;
  final String image;

  CompanyItem(this.title, this.image, {this.color = Colors.white});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(
        builder: (context) => CompanyDetailScreen(title, imageMaxPath(), color)
      )),
      child: Container(
        child: Card(
          elevation: 1,
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          color: color,
          child: Container(
            child: Image.asset(imagePath()),
          ),
        ),
      ),
    );
  }

  String imagePath() => "assets/images/companies/"+image;
  String imageMaxPath() => "assets/images/companies/3.0x/"+image;


}
