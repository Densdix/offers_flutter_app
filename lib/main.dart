import 'package:flutter/material.dart';
import 'package:offers_flutter_app/custom_route.dart';
import 'package:offers_flutter_app/ui/screen/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final theme = ThemeData(
    fontFamily: "GoogleSans",
    primaryColor: Color(0xFF02AD58),
    //primarySwatch: Colors.blue,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      onGenerateRoute: CustomRoute.generateRoute,
      home: Offers(),
    );
  }
}


