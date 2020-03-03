import 'package:flutter/material.dart';
import 'package:offers_flutter_app/ui/widget/appbar/search_appbar.dart';
import 'package:offers_flutter_app/ui/widget/drawer_panel.dart';
import 'package:offers_flutter_app/ui/widget/tab/companies_tab.dart';
import 'package:offers_flutter_app/ui/widget/tab/offers_tab.dart';

class Offers extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _OffersState();
}

class _OffersState extends State<Offers> with SingleTickerProviderStateMixin {

  TabController _tabController;


  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPanel(),
      appBar: SearchAppBar(_tabController),
      body: TabBarView(
        children: <Widget>[OffersTab(), CompaniesTab()],
        controller: _tabController,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}