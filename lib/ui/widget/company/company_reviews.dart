import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:offers_flutter_app/ui/widget/company/review_item.dart';

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

    reviewList.insert(0, ReviewItem("MyComment", loremIpsum, starsCount: 4, profileId: 9999,));
    reviewList.insert(3, ReviewItem("MyComment", loremIpsum, starsCount: 4, profileId: 9999,));
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
