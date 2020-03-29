import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:offers_flutter_app/ui/screen/main_screen.dart';

class CompanyReviews extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _CompanyReviewsState();

}

class _CompanyReviewsState extends State<CompanyReviews>{

  ExpandableController _expandableController;
  bool _isExpandButtonPressed = false;

  static final String loremIpsum =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.";

  List <ReviewItem> reviewList = [
    ReviewItem("Алексеев Петр", loremIpsum, starsCount: 4),
    ReviewItem("Евгение Александр", loremIpsum, starsCount: 3),
    ReviewItem("Иван Иванов", loremIpsum),
    ReviewItem("Евгение Петров", loremIpsum, starsCount: 3),
  ];


  @override
  void initState() {
    _expandableController = ExpandableController();
    super.initState();

    reviewList.insert(0, ReviewItem("Comment", loremIpsum, starsCount: 4, profileId: 9999,));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 15, bottom: 15),
            child: Text("Отзывы", style: TextStyle(color: Colors.black.withOpacity(0.54)),),
          ),
          Expandable(
            collapsed: Column(children: [reviewList[0], reviewList[1]],),
            expanded: Column(
                children: reviewList
                  //for(var i = 0; i<3; i++)...reviewList,
                ),
            controller: _expandableController,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: FlatButton(
              child: _isExpandButtonPressed
                  ? Text("СВЕРНУТЬ", style: TextStyle(color: Color(0xFFFF473D)))
                  : Text("ВСЕ ОТЗЫВЫ", style: TextStyle(color: Color(0xFF02AD58))),
              onPressed: () {
                setState(() {
                  _expandableController.toggle();
                  _isExpandButtonPressed = !_isExpandButtonPressed;
                });
              },
            ),
          )
        ],
      ),
    );
  }

}

class ReviewItem extends StatefulWidget{
  int profileId;
  String name;
  String comment;
  double starsCount;
  bool isEditable = false;

  ReviewItem(this.name, this.comment, {this.starsCount = 0, this.profileId = 0});

  @override
  State<StatefulWidget> createState() => _ReviewItemState();

}


class _ReviewItemState extends State<ReviewItem>{

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: !widget.isEditable
          ? Row(
        children: <Widget>[
          widget.profileId == Offers.myProfileId
          ? Container(
            height: 150,
            width: 4,
            color: Color(0xFF02AD58),
          ) : Container(
            width: 4,
          ),
          Expanded(
            child: ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey
                ),
                width: 40,
                height: 40,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 4),
                    child: Text(widget.name, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                  ),
                  RatingBar(
                    itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                    onRatingUpdate: (double value) {},
                    itemSize: 14,
                    itemCount: 5,
                    initialRating: widget.starsCount,
                  ),
                ],
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(widget.comment, style: TextStyle(fontSize: 14, color: Colors.black.withOpacity(0.54)),),
              ),
              onTap: () {
                if(widget.profileId == Offers.myProfileId){
                  if(widget.isEditable == false){
                    widget.isEditable = true;
                  }
                  else
                    widget.isEditable = false;
                  setState(() {});
                }
              },
            ),
          ),
        ],
      )
          : Row(
        children: <Widget>[
          Expanded(
            child: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 4),
                    child: Text(widget.name, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                  ),
                  RatingBar(
                    itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                    onRatingUpdate: (double value) {},
                    itemSize: 14,
                    itemCount: 5,
                    initialRating: widget.starsCount,
                  ),
                ],
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(widget.comment, style: TextStyle(fontSize: 14, color: Colors.black.withOpacity(0.54)),),
              ),
              onTap: () {
                if(widget.profileId == Offers.myProfileId){
                  if(widget.isEditable == false){
                    widget.isEditable = true;
                  }
                  else
                    widget.isEditable = false;
                  setState(() {});
                }
              },
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                height: 70,
                width: 68,
                color: Color(0xFFFF473D),
                child: Center(
                  child: Icon(Icons.delete, color: Colors.white,),
                ),
              ),
              Container(
                height: 70,
                width: 68,
                color: Color(0xFF3C83EE),
                child: Center(
                  child: Icon(Icons.edit, color: Colors.white,),
                ),
              ),

            ],
          )
        ],
      ),
    );
  }

}