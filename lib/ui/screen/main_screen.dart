import 'package:flutter/material.dart';
import 'package:offers_flutter_app/ui/widget/appbar/search_appbar.dart';
import 'package:offers_flutter_app/ui/widget/drawer_panel.dart';
import 'package:offers_flutter_app/ui/widget/company/companies_tab.dart';
import 'package:offers_flutter_app/ui/widget/offer/offers_tab.dart';

class Offers extends StatefulWidget{
  static final myProfileId = 9999;

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
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            title: Text("Item1")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.close),
              title: Text("Item2")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.share),
              title: Text("Item3")
          ),
        ],
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}