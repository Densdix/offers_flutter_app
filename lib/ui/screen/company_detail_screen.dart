import 'package:flutter/material.dart';
import 'package:offers_flutter_app/ui/widget/company/tab/company_detail_tab.dart';
import 'package:offers_flutter_app/ui/widget/offer/offers_tab.dart';

class CompanyDetailScreen extends StatefulWidget {

  final List arguments;

  String title;
  String img;
  Color color;

  CompanyDetailScreen(this.arguments){
    title = arguments[0];
    img = arguments[1];
    color = arguments[2];
  }
  //CompanyDetailScreen(this.title, this.img, this.color);



  @override
  State<StatefulWidget> createState() => _CompanyDetailScreenState();

}

class _CompanyDetailScreenState extends State<CompanyDetailScreen> with SingleTickerProviderStateMixin{

  TabController tabController;
  ScrollController scrollController;
  int _x = 0;
  bool _isSliverExpanded = false;
  String _title = "";

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this, initialIndex: 1);
    scrollController = ScrollController();
    scrollController.addListener(_scrollListener);
    debugPrint("CREATE");
    debugPrint("green: "+ widget.color.green.toString());
    debugPrint("red: "+ widget.color.red.toString());
    debugPrint("blue: "+ widget.color.blue.toString());
    _title = widget.title;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: scrollController,
        headerSliverBuilder: (context, value) => [
            SliverAppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: _isSaturated ? Colors.black : Colors.white,),
                onPressed:() => Navigator.pop(context),
              ),
              backgroundColor: widget.color,
              title: _isSliverExpanded
                  ? Text(
                      widget.title,
                      style: TextStyle(color: _isSaturated ? Colors.black : Colors.white),)
                  : Text(""),
              pinned: true,
              floating: false,
              expandedHeight: 250,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: widget.color,
                  child: Image.asset(
                    widget.img,
                    scale: 1.5,
                    //fit: BoxFit.fill,
                  ),
                ),
              ),
              bottom: TabBar(
                labelPadding: EdgeInsets.only(bottom: 14),
                labelColor: _isSaturated ? Colors.black : Colors.white,
                tabs: <Widget>[Text("Предложения"), Text("Подробнее"), Text("Локации")],
                controller: tabController,
                indicatorColor:_isSaturated ? Colors.black : Colors.white,

            ),
          )
        ],
        body: TabBarView(
              children: <Widget>[OffersTab(), CompanyDetail(_title), CompanyDetail(_title)],
              controller: tabController),
      ),
    );
  }

  bool get _isBarExpanded {
    return scrollController.hasClients && (scrollController.offset > 140);
  }

 bool get _isSaturated {
    Color currentColor = widget.color;
    int rgbSum = currentColor.blue + currentColor.red + currentColor.green;
    if(rgbSum > 500){
      return true;
    }
    else
      return false;
 }

  void _scrollListener(){

//    final FlexibleSpaceBarSettings settings =
//    context.dependOnInheritedWidgetOfExactType();
//
   debugPrint(scrollController.offset.toString());
//    debugPrint("minExtent "+settings.minExtent.toString());
//    debugPrint("maxExtent "+settings.maxExtent.toString());
//    debugPrint("currExtent "+settings.currentExtent.toString());
    if(_isBarExpanded && !_isSliverExpanded){
      setState(() {
        debugPrint("REST1_"+(_x++).toString()+_isSliverExpanded.toString());
        //widget.title = _title;
        _isSliverExpanded = true;
      });
    }
    else if(!_isBarExpanded && _isSliverExpanded)
      setState(() {
        debugPrint("REST2_"+(_x++).toString());
       // widget.title = "";
        _isSliverExpanded = false;
      });
  }

  double get mOffset => scrollController.offset;

}