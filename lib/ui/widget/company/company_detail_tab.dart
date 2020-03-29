import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:offers_flutter_app/ui/widget/company/about_company.dart';
import 'package:offers_flutter_app/ui/widget/company/company_feedback.dart';
import 'package:offers_flutter_app/ui/widget/company/company_reviews.dart';
import 'package:offers_flutter_app/ui/widget/company/schedule_company.dart';

class CompanyDetail extends StatefulWidget {

  String title;


  CompanyDetail(this.title);

  @override
  State<StatefulWidget> createState() => _CompanyDetailState();

}

enum Days {
  Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
}

class _CompanyDetailState extends State<CompanyDetail>{


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 16, top: 21, right: 16, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(widget.title, style: TextStyle(fontSize: 24),),
                    Text("Lorem ipsum", style: TextStyle(fontSize: 14, color:Colors.black.withOpacity(0.54)),),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    RatingBar(
                      itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                      onRatingUpdate: (double value) {},
                      itemSize: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Text("381,830", style: TextStyle(fontSize: 12, color: Colors.black.withOpacity(0.38)),),
                    ),
                  ],
                )
              ],
            ),
          ),
          Divider(),
          AboutCompany(),
          Divider(),
          ScheduleCompany(),
          Divider(),
          CompanyReviews(),
          CompanyFeedback()
        ],
      ),
    );
  }

}