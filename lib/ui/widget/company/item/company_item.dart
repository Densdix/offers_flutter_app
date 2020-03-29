import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:offers_flutter_app/custom_route.dart';

class CompanyItem extends StatelessWidget {
  final String title;
  final String image;
  final Color color;

  CompanyItem(this.title, this.image, {this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
        CustomRoute.DETAILS_COMPANY, arguments: [title, imageMaxPath(), color]),
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
