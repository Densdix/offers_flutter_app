import 'package:flutter/material.dart';
import 'package:offers_flutter_app/ui/widget/company/item/company_item.dart';

class CompaniesTab extends StatelessWidget{
  final List<Widget> companyList = <Widget>[
    CompanyItem("Фокстрот", "fox.png", color: Color(0xFFFE5000)),
    CompanyItem("Adidas", "adidas.png"),
    CompanyItem("Turkish Airlines", "turk.png"),
    CompanyItem("Reebook", "reebok.png", color: Color(0xFF0074CD)),
    CompanyItem("Answear", "answear.png", color: Color(0xFFF1B1C8)),
    CompanyItem("Puma", "puma.png", color: Colors.black),
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