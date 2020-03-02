import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchAppBar extends StatefulWidget implements PreferredSizeWidget{
  Icon actionIcon = Icon(Icons.search);
  TabController tabController;
  SearchAppBar(this.tabController);

  @override
  _SearchAppBarState createState() => _SearchAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(104.0);

}


class _SearchAppBarState extends State<SearchAppBar> {
  Widget appBarTitle = Text("");
  Icon actionIcon = Icon(Icons.search);


  @override
  void initState() {
    appBarTitle = Text("Корпоратив");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.8,
      leading: Padding(
        padding: EdgeInsets.only(left: 12.0),
        child: IconButton(
          icon: Image.asset("assets/images/Back.png"),
          onPressed: (){},
        ),
      ),
      title: appBarTitle,
      bottom: TabBar(
        unselectedLabelColor: Colors.white.withOpacity(0.56),
        tabs: <Widget>[Tab(text: 'Предложения',), Tab(text: 'Компании',)],
        indicatorColor: Colors.red,
        labelColor: Colors.white,
        indicator: UnderlineTabIndicator(
            borderSide: BorderSide(width: 3.0, color: Colors.white),
            insets: EdgeInsets.symmetric(horizontal: 12.0)
        ),
        controller: widget.tabController,
      ),
      actions: <Widget>[
        IconButton(
          icon: actionIcon,
          onPressed: () {
            setState(() {
              if(this.actionIcon.icon == Icons.search){
                this.actionIcon = Icon(Icons.close);
                this.appBarTitle = TextField(
                  style: TextStyle(
                      color: Colors.white
                  ),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white)
                  ),
                );
              }else
              {
                this.actionIcon = Icon(Icons.search);
                this.appBarTitle = Text("Корпоратив");
              }
            });
          },
        ),
        IconButton(
          icon: Icon(Icons.info_outline),
          onPressed: () {},
        )
      ],
    );
  }

}