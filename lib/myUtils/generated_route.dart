import 'package:ephrama/presentationLayer/all_screens.dart';
import 'package:ephrama/presentationLayer/views/confirm_screen.dart';
import 'package:ephrama/presentationLayer/views/info_screen.dart';
import 'package:flutter/material.dart';
import 'app_constant.dart';
class GeneratedRoute{
  static Route<dynamic> onGeneratedRoute(RouteSettings routeSettings){
    switch (routeSettings.name){
      case AppConstant.homeRoute:
        return _materialRoute(  HomeScreen());
      case AppConstant.cartScreen:
        return _materialRoute(  CartScreen());
      case AppConstant.confirmScreen:
        return _materialRoute( const ConfirmScreen());
      case AppConstant.detailsScreen:
      // var arguments=routeSettings.arguments as Map;
        return _materialRoute( DetailsScreen());
      case AppConstant.paymentScreen:
        return _materialRoute( PaymentScreen());
      case AppConstant.infoScreen:
        return _materialRoute( InfoScreen());
      case AppConstant.successScreen:
        return _materialRoute(const SuccessScreen());
      default:
        return _materialRoute(const Scaffold(body: Center(child: Text('No Page were found')),));
    }
  }
  static Route _materialRoute(Widget view) {
    return MaterialPageRoute(
      builder: (_)=>view,

    );
  }
}