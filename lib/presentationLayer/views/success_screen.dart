import 'package:badges/badges.dart';
import 'package:ephrama/myUtils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../businessLogicLayer/home_screen_controller.dart';
import '../../myUtils/app_constant.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        shadowColor: Colors.grey,
        title: const Center(child: Text('', style: TextStyle(color: Colors.black),)),
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios, color: Colors.black,)),
        actions: [
          IconButton(onPressed: (){
            // var d=_controller.tempItemList.where((data) => data.itemIsSelected==true).toList();
            // if(d.isNotEmpty){
            //   // _cartController.cartList.addAll(d);
            //   Navigator.pushNamed(context, AppConstant.cartScreen);
            // }
          }, icon:Badge(
            badgeColor: const Color(0xff38B449),
            badgeContent: GetBuilder<HomeScreenController>(builder: (uuu){
              var d=uuu.tempItemList.where((data) => data.itemIsSelected==true).length;
              return Text('$d', style: const TextStyle(color: Colors.white,));

            }),
            child: const Icon(Icons.shopping_cart_outlined, color: Colors.black,),
          )),
          const SizedBox(width: 10,)
        ],
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(6*fem, 3*fem, 0*fem, 19*fem),
        width: double.infinity,
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Container(
            //   // mobilesignalC2A (I2:1138;1:250;1:253)
            //   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.5*fem, 3*fem),
            //   width: 16.5*fem,
            //   height: 10*fem,
            //   child: Image.asset(
            //     'assets/page-1/images/mobile-signal-LCE.png',
            //     width: 16.5*fem,
            //     height: 10*fem,
            //   ),
            // ),
            Container(
              // epsuccessfilledkm4 (2:1168)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 46*fem),
              width: 112*fem,
              height: 112*fem,
              child: Image.asset(
                'assets/page-1/images/ep-success-filled.png',
                width: 112*fem,
                height: 112*fem,
              ),
            ),
            Container(
              // orderplacedsuccessUh4 (2:1167)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 16*fem),
              child: Text(
                'Order Placed Successfully',
                textAlign: TextAlign.center,
                style: SafeGoogleFont (
                  'Aeroport',
                  fontSize: 24*ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2575*ffem/fem,
                  color: const Color(0xff2b2b2e),
                ),
              ),
            ),
            Container(
              // wewillcallyouverzvJ (2:1166)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 239*fem),
              constraints: BoxConstraints (
                maxWidth: 292*fem,
              ),
              child: Text(
                'One of our representatives will confirm your order shortly. You will receive an invoice through SMS.',
                textAlign: TextAlign.center,
                style: SafeGoogleFont (
                  'Aeroport',
                  fontSize: 16*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.2575*ffem/fem,
                  color:const  Color(0xff2b2b2e),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        // autogroupcr86VcA (74wQ1HNUdNdHTEkddoCR86)
        margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 14.5*fem, 10*fem),
        width: double.infinity,
        height: 48*fem,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(

              onTap: (){
                Navigator.pushNamedAndRemoveUntil(context, AppConstant.homeRoute, (route) => false, arguments: {});
                //  Navigator.pushAndRemoveUntil(context, AppConstant.homeRoute);
                // Navigator.pushNamed(context, AppConstant.paymentScreen);
                //  Navigator.pushNamed(context, AppConstant.infoScreen);
                //   Navigator.pushNamed(context, AppConstant.detailsScreen);
              },
              child: Container(
                // loginwiithphonePxS (2:1170)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18.5*fem, 0*fem),
                width: 155.5*fem,
                height: double.infinity,
                decoration: BoxDecoration (
                  color:const  Color(0xffe6e7e8),
                  borderRadius: BorderRadius.circular(3*fem),
                ),
                child: Center(
                  child: Text(
                    'Back To Home',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Aeroport',
                      fontSize: 14*ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2857142857*ffem/fem,
                      color: const Color(0xff3b4148),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              // loginwiithphone5aN (2:1173)
              width: 155.5*fem,
              height: double.infinity,
              decoration: BoxDecoration (
                color:const  Color(0xff226cc3),
                borderRadius: BorderRadius.circular(3*fem),
              ),
              child: Center(
                child: Text(
                  'View Orders',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'Aeroport',
                    fontSize: 14*ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.2857142857*ffem/fem,
                    color:const  Color(0xffffffff),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}