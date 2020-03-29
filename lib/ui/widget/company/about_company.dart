import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutCompany extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _AboutCompanyState();

}

class _AboutCompanyState extends State<AboutCompany> {

  bool _isExpandButtonPressed = false;

  ExpandableController _expandableController;
  final String loremIpsum =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

  @override
  void initState() {
    _expandableController = ExpandableController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Icon(
                  Icons.info_outline,
                  size: 22.0,
                  color: Colors.black.withOpacity(0.38),
                ),
              ),
              Expanded(
                flex: 6,
                child: ListTile(
                  title: Text(
                    "О компании",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.54),
                    ),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Expandable(
                      collapsed: Text(loremIpsum, maxLines: 6, overflow: TextOverflow.ellipsis,),
                      expanded: Text(loremIpsum),
                      controller: _expandableController,
                    ),
                  ),
                ),

              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: FlatButton(
            child: _isExpandButtonPressed
                ? Text("СВЕРНУТЬ", style: TextStyle(color: Color(0xFFFF473D), fontWeight: FontWeight.bold))
                : Text("ДЕТАЛЬНЕЕ", style: TextStyle(color: Color(0xFF02AD58), fontWeight: FontWeight.bold)),
            onPressed: () {
              setState(() {
                _expandableController.toggle();
                _isExpandButtonPressed = !_isExpandButtonPressed;
              });
            },
          ),
        )
      ],
    );
  }

}