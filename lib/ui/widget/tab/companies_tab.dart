import 'package:flutter/material.dart';
import 'package:offers_flutter_app/ui/widget/item/company_item.dart';

class CompaniesTab extends StatelessWidget{
  final List<Widget> companyList = <Widget>[
    CompanyItem(1, "assets/images/companies-items/fox.png", color: Color(0xFFFE5000)),
    CompanyItem(2, "assets/images/companies-items/adidas.png"),
    CompanyItem(3, "assets/images/companies-items/turk.png"),
    CompanyItem(4, "assets/images/companies-items/reebok.png", color: Color(0xFF0074CD)),
    CompanyItem(4, "assets/images/companies-items/answear.png", color: Color(0xFFF1B1C8)),
    CompanyItem(4, "assets/images/companies-items/puma.png", color: Colors.black),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 0, left: 8.0, right: 8.0),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        children: companyList,
      ),
    );
  }
}