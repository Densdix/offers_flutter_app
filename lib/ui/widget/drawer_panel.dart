import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: <Color>[Colors.lightGreen, Colors.green],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
          )
        ),
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Container(
                  height: 100,
                  width: 100,
                  child: Card(
                    shape: CircleBorder(),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text("Item 1"),
              onTap: (){},
            ),
            ListTile(
              title: Text("Item 2"),
              onTap: (){},
            ),
            ListTile(
              title: Text("Item 3"),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }
}