import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF27C189), Color(0xFF237BBF)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
            )
        ),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 250,
                  child: DrawerHeader(
                    child: Center(
                      child: SvgPicture.asset("assets/images/svg/union.svg"),
                    ),
                  ),
                ),
                Positioned(
                  child: IconButton(
                    icon: Icon(Icons.close),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  top: 25,
                  left: 5,
                )
              ],
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 54),
              onTap: (){},
              leading: Icon(Icons.person, color: Colors.white.withOpacity(0.54),),
              title: Text("Профиль", style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 54),
              leading: Icon(Icons.location_on,  color: Colors.white.withOpacity(0.54),),
              title: Text("Позиции", style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 54),
              leading: Icon(Icons.chrome_reader_mode,  color: Colors.white.withOpacity(0.54),),
              title: Text("Корпоратка", style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 54),
              leading: Icon(Icons.arrow_forward_ios,  color: Colors.white.withOpacity(0.54),),
              title: Text("Транзакции", style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 54),
              leading: Icon(Icons.settings,  color: Colors.white.withOpacity(0.54),),
              title: Text("Настройка", style: TextStyle(color: Colors.white),),
            ),

            Padding(
              padding: EdgeInsets.only(top: 50),
              child: MaterialButton(
                minWidth: 226,
                height: 44,
                color: Color(0xFFFF473D),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                child: Text("Добавить карту", style: TextStyle(color: Colors.white),),
                onPressed: (){},
              ),
            ),

            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 28, right: 15),
                      child: Container(
                        child: IconButton(
                          icon: Icon(Icons.share, color: Colors.white),
                          onPressed: () {},),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 1,
                                color: Colors.white.withOpacity(0.2)
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 28, left: 15),
                      child: Container(
                        child: IconButton(
                          icon: Icon(Icons.exit_to_app, color: Colors.white),
                          onPressed: () {},),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 1,
                                color: Colors.white.withOpacity(0.2)
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}