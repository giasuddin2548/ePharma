import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../businessLogicLayer/home_screen_controller.dart';
import '../../myUtils/app_constant.dart';
import '../../myUtils/utils.dart';

class PaymentScreen extends StatelessWidget {

  final _controller=Get.put(HomeScreenController());

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupsreiJW2 (74wGDg1e1JuzSmSeBcSREi)
              padding: EdgeInsets.fromLTRB(6*fem, 3*fem, 0*fem, 7*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  Container(
                    // orderplacedsuccessuot (1:855)
                    margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 0*fem, 19*fem),
                    child: Text(
                      'You are buying from:',
                      style: SafeGoogleFont (
                        'Aeroport',
                        fontSize: 16*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2575*ffem/fem,
                        color:const Color(0xff979797),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupfkawqSe (74wEhtCaueUV5d7mA7fkaW)
                    margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 0*fem, 3*fem),
                    width: 135*fem,
                    height: 90*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // orderplacedsuccessmr6 (1:857)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 116*fem,
                              height: 31*fem,
                              child: Text(
                                'Diagnostics',
                                style: SafeGoogleFont (
                                  'Aeroport',
                                  fontSize: 24*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575*ffem/fem,
                                  color: const Color(0xff0099ff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // orderplacedsuccessfAn (1:858)
                          left: 0*fem,
                          top: 29*fem,
                          child: Align(
                            child: GetBuilder<HomeScreenController>(builder: (uuu){
                              var d=uuu.tempItemList.where((data) => data.itemIsSelected==true).length;
                              var ddd=uuu.tempItemList.where((data) => data.itemIsSelected==true).toList();
                              var total=0.0;
                              for (var element in ddd) {
                                total=total+(element.itemPriceCurrent*element.itemQuantity);
                              }
                              return SizedBox(
                                width: 135*fem,
                                height: 61*fem,
                                child: Text(
                                  '৳${(total-uuu.savedAmount.value).toStringAsFixed(2)}',
                                  style: SafeGoogleFont (
                                    'Aeroport',
                                    fontSize: 48*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2575*ffem/fem,
                                    color: const Color(0xff0099ff),
                                  ),
                                ),
                              );

                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // orderplacedsuccessjAe (1:856)
                    margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 0*fem, 19*fem),
                    child: Text(
                      '(All inclusive)',
                      style: SafeGoogleFont (
                        'Aeroport',
                        fontSize: 12*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2575*ffem/fem,
                        color:const Color(0xff979797),
                      ),
                    ),
                  ),
                  Container(
                    // group26516rFG (1:935)
                    margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 0*fem, 21*fem),
                    padding: EdgeInsets.fromLTRB(27*fem, 9*fem, 11*fem, 10*fem),
                    width: 151*fem,
                    height: 40*fem,
                    decoration: BoxDecoration (
                      color: const Color(0xffe2f8f8),
                      borderRadius: BorderRadius.circular(20*fem),
                    ),
                    child: SizedBox(

                      // group5486xJJ (1:937)
                      width: double.infinity,
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // viewdetailsWKp (1:942)
                            margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 21*fem, 0*fem),
                            child: Text(
                              'View Details',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Aeroport',
                                fontSize: 14*ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xff0099ff),
                              ),
                            ),
                          ),
                          SizedBox(
                            // autogroupbky8d9Y (74wHHj4aRBFZULgCwybky8)
                            width: 21*fem,
                            height: 21*fem,
                            child: Image.asset(
                              'assets/page-1/images/auto-group-bky8.png',
                              width: 21*fem,
                              height: 21*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Container(
              // autogroupwnbt7U2 (74wEzi3tELkNw24fe2WNbt)
              padding: EdgeInsets.fromLTRB(0*fem, 152*fem, 0*fem, 24*fem),
              width: double.infinity,
              height: 446*fem,
              decoration: const BoxDecoration (

                color: Color(0xfffafafa),
              ),
              child: GetBuilder<HomeScreenController>(builder: (uuu){
                return SizedBox(
                  // group26402rAi (1:862)
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // payviaanyofthebelowmethodsacW (1:864)
                        margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 0*fem, 15*fem),
                        child: Text(
                          'Pay via any of the below methods',
                          style: SafeGoogleFont (
                            'Aeroport',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575*ffem/fem,
                            color:const Color(0xff979797),
                          ),
                        ),
                      ),
                      Container(
                        // autogroupzrq45pA (74wFEHVbV92eeK9M7iZRq4)
                        padding: EdgeInsets.fromLTRB(22*fem, 11*fem, 22*fem, 10*fem),
                        width: double.infinity,
                        height: 53*fem,
                        decoration: const BoxDecoration (
                          color: Color(0xfff4f4f4),
                        ),
                        child: SizedBox(
                          // group5491Q5k (1:865)
                          width: 183*fem,
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // radioLzz (1:876)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 0*fem),
                                width: 20*fem,
                                height: 20*fem,
                                child: Checkbox(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                    value: uuu.bkash.value, onChanged: (v){
                                    uuu.nagad.value=false;
                                    uuu.cart.value=false;
                                    uuu.bkash.value=true;
                                    uuu.update();
                                }),
                              ),
                              Container(
                                // bkashlogoU5c (1:866)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19.14*fem, 0*fem),
                                width: 33.86*fem,
                                height: 32*fem,
                                child: Image.asset(
                                  'assets/page-1/images/bkashlogo.png',
                                  width: 33.86*fem,
                                  height: 32*fem,
                                ),
                              ),
                              Container(
                                // bkashpaymentBEv (1:875)
                                margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                                child: Text(
                                  'bKash Payment',
                                  style: SafeGoogleFont (
                                    'Aeroport',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2575*ffem/fem,
                                    color:const Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // autogroupksh4tf8 (74wFUn5Srz5Rt9d7kPksh4)
                        padding: EdgeInsets.fromLTRB(16*fem, 14*fem, 16*fem, 0*fem),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // group5490Rux (1:877)
                              margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 24.16*fem),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // radiokSS (1:897)
                                    margin: EdgeInsets.fromLTRB(0*fem, 2.16*fem, 16*fem, 0*fem),
                                    width: 20*fem,
                                    height: 20*fem,
                                    child: Checkbox(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                        value: uuu.cart.value, onChanged: (v){
                                      uuu.nagad.value=false;
                                      uuu.cart.value=true;
                                      uuu.bkash.value=false;
                                      uuu.update();
                                    }),
                                  ),
                                  Container(
                                    // group5488UNS (1:879)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 17.41*fem, 0*fem),
                                    width: 37.59*fem,
                                    height: 25.84*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/group-5488.png',
                                      width: 37.59*fem,
                                      height: 25.84*fem,
                                    ),
                                  ),
                                  Container(
                                    // creditdebitcardmcS (1:878)
                                    margin: EdgeInsets.fromLTRB(0*fem, 2.16*fem, 0*fem, 0*fem),
                                    child: Text(
                                      'Credit/Debit Card',
                                      style: SafeGoogleFont (
                                        'Aeroport',
                                        fontSize: 14*ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.2575*ffem/fem,
                                        color:const Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // group5489GJJ (1:898)
                              margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 37*fem),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // radioChk (1:931)
                                    margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 19*fem, 0*fem),
                                    width: 20*fem,
                                    height: 20*fem,
                                    child: Checkbox(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                        value: uuu.nagad.value, onChanged: (v){
                                         uuu.nagad.value=true;
                                         uuu.cart.value=false;
                                         uuu.bkash.value=false;
                                         uuu.update();
                                    }),
                                  ),
                                  Container(
                                    // group5481vte (1:899)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19.63*fem, 0*fem),
                                    width: 32.37*fem,
                                    height: 32*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/group-5481.png',
                                      width: 32.37*fem,
                                      height: 32*fem,
                                    ),
                                  ),
                                  Container(
                                    // nagadpaymentLhU (1:930)
                                    margin: EdgeInsets.fromLTRB(0*fem, 4*fem, 0*fem, 0*fem),
                                    child: Text(
                                      'Nagad Payment',
                                      style: SafeGoogleFont (
                                        'Aeroport',
                                        fontSize: 14*ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.2575*ffem/fem,
                                        color: const Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                if(_controller.bkash.value==true ||_controller.cart.value==true||_controller.nagad.value==true ){
                                  Navigator.pushNamed(context, AppConstant.successScreen);
                                  _controller.dummyData();
                                  _controller.bkash.value=false;
                                  _controller.cart.value=false;
                                  _controller.nagad.value=false;
                                  _controller.condition.value=false;
                                  _controller.update();
                                }else{
                                  Fluttertoast.showToast(msg: 'Please, choose any payment option');
                                }
                              },
                              child: Container(
                                // loginwiithphonerfp (1:932)
                                width: double.infinity,
                                height: 48*fem,
                                decoration: BoxDecoration (
                                  color: const Color(0xff226cc3),
                                  borderRadius: BorderRadius.circular(3*fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'Pay Now',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Aeroport',
                                      fontSize: 14*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2857142857*ffem/fem,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
