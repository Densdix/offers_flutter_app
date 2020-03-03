import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Container(
                height: 100,
                width: 100,
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                  color: Colors.green[200],
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.green
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
    );
  }
}