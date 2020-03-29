import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CompanyFeedback extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _CompanyFeedbackState();

}

class _CompanyFeedbackState extends State<CompanyFeedback>{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(top: 24),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Center(
                child: Container(
                  height: 56,
                  width: 56,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Center(
                child: Text('Оставить отзыв', style: TextStyle(fontSize: 18),),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Center(
                child: Container(
                  width: 300,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing',
                      style: TextStyle(color: Colors.black.withOpacity(0.54)),
                      textAlign: TextAlign.center,
                    )
                )
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: Center(
                child: RatingBar(
                  itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                  onRatingUpdate: (double value) {},
                  itemPadding: EdgeInsets.symmetric(horizontal: 14.0),
                  itemSize: 30,
                  itemCount: 5,
                  initialRating: 4,
                  unratedColor: Colors.black.withOpacity(0.12),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: TextField(
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(hintText: "Опишите свои впечатления", hintStyle: TextStyle(color: Colors.black.withOpacity(0.38))),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  color: Color(0xFFFF473D),
                  textColor: Colors.white,
                  child: Text("Опубликовать"),
                  onPressed: () {},
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

}