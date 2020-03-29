import 'package:flutter/material.dart';
import 'package:offers_flutter_app/ui/screen/company_detail_screen.dart';
import 'package:offers_flutter_app/ui/screen/main_screen.dart';

class CustomRoute {
  static const String MAIN_SCREEN = "/main_screen";
  static const String DETAILS_COMPANY = "/details_company";

  static Route<dynamic> generateRoute(RouteSettings settings){
    Widget screen;
    switch(settings.name){
      case MAIN_SCREEN:
        screen = Offers();
        break;
      case DETAILS_COMPANY:
        screen = CompanyDetailScreen(settings.arguments);
        break;
    }
    return MaterialPageRoute(
      builder: (_) => screen,
    );
  }

}