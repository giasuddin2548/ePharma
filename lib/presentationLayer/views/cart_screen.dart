import 'package:badges/badges.dart';
import 'package:ephrama/businessLogicLayer/all_controller.dart';
import 'package:ephrama/myUtils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../myUtils/app_constant.dart';

class CartScreen extends StatelessWidget {

  final _controller=Get.put(HomeScreenController());
  // final _cartController=Get.put(CartScreenController());

  double baseWidth = 0.0;
  double fem = 0.0;
  double ffem = 0.0;

  @override
  Widget build(BuildContext context) {
     baseWidth = 360;
     fem = MediaQuery.of(context).size.width / baseWidth;
     ffem = fem * 0.97;
    return  Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        shadowColor: Colors.grey,
        title: const Center(child: Text('Cart', style: TextStyle(color: Colors.black),)),
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
      backgroundColor: Colors.white,
      body:CustomScrollView(
        slivers: [

          SliverToBoxAdapter(
            child: _body(context),
          )
        ],
      ),
    );
  }

  _tempItemList(BuildContext context) {
    return MediaQuery.removePadding(
      removeTop: true,
      context: context, child: GetBuilder<HomeScreenController>(builder: (homeC){
        var list=homeC.tempItemList.where((data) => data.itemIsSelected==true).toList();
        return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: list.length,
            itemBuilder: (c, index){
              var d=list[index];
             return Container(
               margin: const EdgeInsets.only(bottom: 1),

               child: FittedBox(
                 child: Row(
                   children: [
                     Container(
                       alignment: Alignment.centerLeft,
                       height: 30,
                       // color: Colors.yellowAccent,
                       width: (Get.width*0.6)-10,
                       child:  Text(
                         d.itemTitle,
                         maxLines: 1,
                         overflow: TextOverflow.ellipsis,
                         style: SafeGoogleFont (
                           'Aeroport',
                           fontSize: 15*ffem,
                           fontWeight: FontWeight.w400,
                           height: 1.2575*ffem/fem,
                           color: const Color(0xff0c1026),

                         ),
                       ),

                     ),

                     Container(
                       height: 30,
                       alignment: Alignment.center,
                       // color: Colors.green,
                       width: (Get.width*0.2)-5,
                       child: GetBuilder<HomeScreenController>(builder: (tempController)=>_quantity(context, (){
                         d.itemQuantity++;
                         tempController.update();
                       }, (){
                         if(d.itemQuantity==1){
                           d.itemQuantity=0;
                           d.itemIsSelected=false;
                           tempController.update();
                         }else{
                           d.itemQuantity--;
                           //  d.itemIsSelected=false;
                           tempController.update();
                         }

                       }, d.itemQuantity.toString())),
                     ),
                     Container(
                       height: 30,
                       alignment: Alignment.centerRight,
                       // color: Colors.red,
                       width: (Get.width*0.2)-5,
                       child:  Text(
                         '${d.itemPriceCurrent}',
                         maxLines: 1,
                         overflow: TextOverflow.ellipsis,
                         style: SafeGoogleFont (
                           'Aeroport',
                           fontSize: 15*ffem,
                           fontWeight: FontWeight.w400,
                           height: 1.2575*ffem/fem,
                           color: const Color(0xff0c1026),

                         ),
                       ),
                     ),
                   ],
                 ),
               ),
             );
            });
      }));
  }
  _quantity(BuildContext context, VoidCallback incement, VoidCallback decremnt, String data) {
    var size=20.0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: incement,
          child: Container(
            decoration:  BoxDecoration(

                borderRadius: const BorderRadius.all(Radius.circular(50)),
                border: Border.all(color: Colors.black)
            ),
            width: size,
            height: size,child:  const Icon(Icons.add, size: 15,color: Color(0xff1c1c1e),),),
        ),
        Text(
          data,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: SafeGoogleFont (
            'Aeroport',
            fontSize: 15*ffem,
            fontWeight: FontWeight.w400,
            height: 1.2575*ffem/fem,
            color: const Color(0xff0c1026),

          ),
        ),

        InkWell(
          onTap: decremnt,
          child: Container(
            decoration:  BoxDecoration(

                borderRadius: const BorderRadius.all(Radius.circular(50)),
                border: Border.all(color: Colors.black)
            ),
            width: size,
            height: size,child:  const Icon(Icons.remove, size: 15,color: Color(0xff1c1c1e),),),
        ),
      ],
    );
  }
  _body(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 10,),
        SizedBox(
          width: 331*fem,
          // height: 251*fem,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // titleMWW (1:481)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                width: double.infinity,
                height: 43*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // thyrocareEqC (1:482)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 192*fem, 0*fem),
                      child: Text(
                        'ePharma',
                        style: SafeGoogleFont (
                          'Aeroport',
                          fontSize: 17*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2575*ffem/fem,
                          color: Color(0xff0c1026),
                        ),
                      ),
                    ),
                    SizedBox(
                      // imageremovebgpreview11Mev (1:483)
                      width: 73*fem,
                      height: 24*fem,
                      child: Image.asset(
                        'assets/page-1/images/image-removebg-preview-1-1.png',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // line241xDL (1:425)
                margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 0*fem, 6*fem),
                width: 331*fem,
                height: 1*fem,
                color: Colors.grey.withOpacity(0.3),
              ),
              SizedBox(
                // doorstepdiagnostic5av (1:427)
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // title31x (1:456)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                      width: double.infinity,
                      height: 31*fem,
                      child: SizedBox(
                        // autogroupcf46BP4 (74w4okXZrZn2HrJLiYCf46)
                        width: 87*fem,
                        height: 19.97*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              // autogroupynuq6kv (74w4uqBma4grbzJf7FynuQ)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                              width: 22*fem,
                              height: 17.97*fem,
                              child: Image.asset(
                                'assets/page-1/images/auto-group-ynuq.png',
                                width: 22*fem,
                                height: 17.97*fem,
                              ),
                            ),
                            Container(
                              // doorstepdiagnosticDqY (1:457)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.97*fem),
                              child: Text(
                                'Medicines',
                                style: SafeGoogleFont (
                                  'Aeroport',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575*ffem/fem,
                                  color: Color(0xff0c1026),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // line241xDL (1:425)
                      margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 0*fem, 6*fem),
                      width: 331*fem,
                      height: 1*fem,
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    FittedBox(
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 30,
                            // color: Colors.yellowAccent,
                            width: (Get.width*0.6)-10,
                            child:   Text('Type-Item',style: SafeGoogleFont (
                              'Aeroport',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff767676),
                            ),),

                          ),

                          Container(
                            height: 30,
                            alignment: Alignment.center,
                            // color: Colors.green,
                            width: (Get.width*0.2)-5,
                            child: Text('QTY',style: SafeGoogleFont (
                              'Aeroport',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff767676),

                            ),),
                          ),
                          Container(
                            height: 30,
                            alignment: Alignment.centerRight,
                            // color: Colors.red,
                            width: (Get.width*0.2)-5,
                            child:   Text('Price(tk)',style: SafeGoogleFont (
                              'Aeroport',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: Color(0xff767676),
                            ),),
                          ),
                        ],
                      ),
                    ),
                    _tempItemList(context),
                  ],
                ),
              ),

            ],
          ),
        ),
        Container(
          // line241xDL (1:425)
          margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 0*fem, 6*fem),
          width: 331*fem,
          height: 1*fem,
          color: Colors.grey.withOpacity(0.3),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(17*fem, 6*fem, 12*fem, 20*fem),
          width: 360*fem,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // subtotalwp2 (1:511)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1.64*fem, 21*fem),
                width: double.infinity,
                child: FittedBox(
                  child: Row(
                    
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // subtotalHN6 (1:512)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 205.36*fem, 0*fem),
                        child: Text(
                          'Medicine Total',
                          style: SafeGoogleFont (
                            'Aeroport',
                            fontSize: 13*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575*ffem/fem,
                            color: const Color(0xff767676),
                          ),
                        ),
                      ),
                      GetBuilder<HomeScreenController>(builder: (uuu){
                        var d=uuu.tempItemList.where((data) => data.itemIsSelected==true).length;
                        var ddd=uuu.tempItemList.where((data) => data.itemIsSelected==true).toList();
                        var total=0.0;
                        for (var element in ddd) {
                          total=total+(element.itemPriceCurrent*element.itemQuantity);
                        }

                        return InkWell(
                          onTap: (){
                          },
                          child: Text(
                            // bdt228500orE (1:513)
                            '৳${total.toStringAsFixed(2)}',
                            textAlign: TextAlign.right,
                            style: SafeGoogleFont (
                              'Aeroport',
                              fontSize: 13*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: Color(0xff767676),
                            ),
                          ),
                        );

                      })
                    ],
                  ),
                ),
              ),
              Container(
                // line241xDL (1:425)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
                width: 331*fem,
                height: 1*fem,
                color: Colors.grey.withOpacity(0.3),
              ),
              Container(
                // subtotal4GN (1:514)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1.64*fem, 0*fem),
                width: double.infinity,
                child: FittedBox(
                  child: Row(
                    
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // subtotalB66 (1:515)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 215.36*fem, 0*fem),
                        child: Text(
                          'Vendor Total',
                          style: SafeGoogleFont (
                            'Aeroport',
                            fontSize: 13*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575*ffem/fem,
                            color: Color(0xff767676),
                          ),
                        ),
                      ),

                      GetBuilder<HomeScreenController>(builder: (uuu){
                        var d=uuu.tempItemList.where((data) => data.itemIsSelected==true).length;
                        var ddd=uuu.tempItemList.where((data) => data.itemIsSelected==true).toList();
                        var total=0.0;
                        for (var element in ddd) {
                          total=total+(element.itemPriceCurrent*element.itemQuantity);
                        }

                        return Text(
                          // bdt228500uGz (1:516)
                          '৳${total.toStringAsFixed(2)}',
                          textAlign: TextAlign.right,
                          style: SafeGoogleFont (
                            'Aeroport',
                            fontSize: 13*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575*ffem/fem,
                            color: Color(0xff767676),
                          ),
                        );

                      })
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(13*fem, 4*fem, 13.44*fem, 11.77*fem),
          width: 360*fem,
          decoration: const BoxDecoration (
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // ordersummary8itKLi (1:497)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 176.56*fem, 14.4*fem),
                child:GetBuilder<HomeScreenController>(builder: (uuu){
                  var d=uuu.tempItemList.where((data) => data.itemIsSelected==true).length;
                  var ddd=uuu.tempItemList.where((data) => data.itemIsSelected==true).toList();
                  var total=0.0;
                  for (var element in ddd) {
                    total=total+(element.itemPriceCurrent*element.itemQuantity);
                  }

                  return Text(
                    'Order Summary - $d Items',
                    style: SafeGoogleFont (
                      'Aeroport',
                      fontSize: 15*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff3b4148),
                    ),
                  );

                }),
              ),
              Container(
                // line241xDL (1:425)
                margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 0*fem, 6*fem),
                width: 331*fem,
                height: 1*fem,
                color: Colors.grey.withOpacity(0.3),
              ),
              Container(
                // subtotalXhg (1:499)
                margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 0.28*fem, 3.14*fem),
                width: double.infinity,
                child: FittedBox(
                  child: Row(
                    
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // subtotal4xW (1:500)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 221.28*fem, 0*fem),
                        child: Text(
                          'Grand Total',
                          style: SafeGoogleFont (
                            'Aeroport',
                            fontSize: 13*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575*ffem/fem,
                            color: Color(0xff767676),
                          ),
                        ),
                      ),

                      GetBuilder<HomeScreenController>(builder: (uuu){
                        var d=uuu.tempItemList.where((data) => data.itemIsSelected==true).length;
                        var ddd=uuu.tempItemList.where((data) => data.itemIsSelected==true).toList();
                        var total=0.0;
                        for (var element in ddd) {
                          total=total+(element.itemPriceCurrent*element.itemQuantity);
                        }

                        return Text(
                          // bdt228500zLN (1:501)
                          '৳${total.toStringAsFixed(2)}',
                          textAlign: TextAlign.right,
                          style: SafeGoogleFont (
                            'Aeroport',
                            fontSize: 13*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575*ffem/fem,
                            color: const Color(0xff767676),
                          ),
                        );

                      })
                    ],
                  ),
                ),
              ),
              Container(
                // tonicdiscountjYr (1:502)
                margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0.24*fem, 5.05*fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // promoG2z (1:503)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 234.32*fem, 0*fem),
                      child: Text(
                        'Promo',
                        style: SafeGoogleFont (
                          'Aeroport',
                          fontSize: 13*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2575*ffem/fem,
                          color: const Color(0xff767676),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){

                        showMyDialog(context);
                      },
                      child: Text(
                        // promoavailableappnn2 (1:504)
                        'Apply now',
                        textAlign: TextAlign.right,
                        style: SafeGoogleFont (
                          'Aeroport',
                          fontSize: 13*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2575*ffem/fem,
                          color: const Color(0xff0099ff),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // totalpriceiva (1:505)
                margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0.24*fem, 5.05*fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // savedRpz (1:506)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 256.32*fem, 0*fem),
                      child: Text(
                        'Saved',
                        style: SafeGoogleFont (
                          'Aeroport',
                          fontSize: 13*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2575*ffem/fem,
                          color: Color(0xff767676),
                        ),
                      ),
                    ),
                    GetBuilder<HomeScreenController>(builder: (uuu){
                      var d=uuu.tempItemList.where((data) => data.itemIsSelected==true).length;
                      var ddd=uuu.tempItemList.where((data) => data.itemIsSelected==true).toList();
                      var total=0.0;
                      for (var element in ddd) {
                        total=total+(element.itemPriceCurrent*element.itemQuantity);
                      }
                      return Text(
                        // btd000VZx (1:507)
                        '৳${(uuu.savedAmount.value).toStringAsFixed(2)}',
                        textAlign: TextAlign.right,
                        style: SafeGoogleFont (
                          'Aeroport',
                          fontSize: 13*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2575*ffem/fem,
                          color: const Color(0xff767676),
                        ),
                      );

                    }),

                  ],
                ),
              ),
              Container(
                // deliveryfee1YJ (1:508)
                margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0.24*fem, 0*fem),
                width: double.infinity,
                child: FittedBox(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // totalpayableLqU (1:509)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 207.32*fem, 0*fem),
                        child: Text(
                          'Total Payable',
                          style: SafeGoogleFont (
                            'Aeroport',
                            fontSize: 13*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575*ffem/fem,
                            color: const Color(0xff1a1a1a),
                          ),
                        ),
                      ),
                      GetBuilder<HomeScreenController>(builder: (uuu){
                        var d=uuu.tempItemList.where((data) => data.itemIsSelected==true).length;
                        var ddd=uuu.tempItemList.where((data) => data.itemIsSelected==true).toList();
                        var total=0.0;
                        for (var element in ddd) {
                          total=total+(element.itemPriceCurrent*element.itemQuantity);
                        }

                        return Text(
                          // bdt228500ebG (1:510)
                          '৳${(total-uuu.savedAmount.value).toStringAsFixed(2)}',
                          textAlign: TextAlign.right,
                          style: SafeGoogleFont (
                            'Aeroport',
                            fontSize: 13*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2575*ffem/fem,
                            color: Color(0xff0c1026),
                          ),
                        );

                      }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        InkWell(
          onTap: (){
            showMyDialog(context);
          },
          child: Container(
            padding: EdgeInsets.fromLTRB(16*fem, 128.5*fem, 12*fem, 19.02*fem),
            width: 360*fem,
            height: 251*fem,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // frameU5t (1:485)
                  margin: EdgeInsets.fromLTRB(7.19*fem, 0*fem, 183.81*fem, 16.48*fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        // imageQES (1:486)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.85*fem, 0.04*fem),
                        width: 19.15*fem,
                        height: 19.96*fem,
                        child: Image.asset(
                          'assets/page-1/images/image-D3t.png',
                          width: 19.15*fem,
                          height: 19.96*fem,
                        ),
                      ),
                      Text(
                        // applypromocode7uY (1:494)
                        'Apply promo code',
                        style: SafeGoogleFont (
                          'Aeroport',
                          fontSize: 15*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.5*ffem/fem,
                          color: const Color(0xff6c7076),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // line240rs8 (1:415)
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                  width: double.infinity,
                  height: 1*fem,
                  decoration: const BoxDecoration (
                    color: Color(0xffd8d8d8),
                  ),
                ),
                Container(
                  // splitkxW (1:416)
                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                  width: double.infinity,
                  height: 48*fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // total5zn (1:417)
                        margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 41*fem, 3*fem),
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // totalpayable1tS (1:418)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                              child: Text(
                                'Total Payable:',
                                style: SafeGoogleFont (
                                  'Aeroport',
                                  fontSize: 13*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575*ffem/fem,
                                  color: const Color(0xff767676),
                                ),
                              ),
                            ),

                            GetBuilder<HomeScreenController>(builder: (uuu){
                              var d=uuu.tempItemList.where((data) => data.itemIsSelected==true).length;
                              var ddd=uuu.tempItemList.where((data) => data.itemIsSelected==true).toList();
                              var total=0.0;
                              for (var element in ddd) {
                                total=total+(element.itemPriceCurrent*element.itemQuantity);
                              }

                              return Text(
                                // Ku8 (1:419)
                                '৳${(total-uuu.savedAmount.value).toStringAsFixed(2)}',
                                style: SafeGoogleFont (
                                  'Aeroport',
                                  fontSize: 17*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2575*ffem/fem,
                                  color: const Color(0xff0c1026),

                                ),
                              );

                            }),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, AppConstant.infoScreen);
                        },
                        child: Container(
                          // loginwiithphonesfk (1:421)
                          width: 214*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: const Color(0xff226cc3),
                            borderRadius: BorderRadius.circular(3*fem),
                          ),
                          child: Center(
                            child: Text(
                              'Checkout',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Aeroport',
                                fontSize: 14*ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2575*ffem/fem,
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
          ),
        ),
      ],
    );
  }


   void showMyDialog(BuildContext context){
    Get.defaultDialog(
      title: '',
      titleStyle: const TextStyle( fontWeight: FontWeight.bold),
      content: Container(
        alignment: Alignment.center,
        // color: Colors.grey,
        // height: 52/100*Get.size.width,
        width: Get.width*0.8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              height: 100,
              alignment: Alignment.center,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Color(0xffF2F2F7),
                  borderRadius: BorderRadius.circular(100)
                ),
                child: Center(
                  // ictagLLN (2:1069)
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: Image.asset(
                      'assets/page-1/images/ictag.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),

              alignment: Alignment.center,
              child: Text(
                // applypromocodeaq4 (2:1063)
                'Apply promo code',
                style: SafeGoogleFont (
                  'Aeroport',
                  fontSize: 15*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.5*ffem/fem,
                  color: Color(0xff6c7076),
                ),
              ),
            ),

            Container(
              // group88PZY (2:1088)
              height: 75,
              margin: EdgeInsets.fromLTRB(0.67*fem, 0*fem, 0.67*fem, 14*fem),
              padding: EdgeInsets.fromLTRB(16*fem, 17*fem, 16*fem, 16*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                border: Border.all(color: Color(0xffe0dddd)),
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(8*fem),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x28000000),
                    offset: Offset(0*fem, 2*fem),
                    blurRadius: 3*fem,
                  ),
                ],
              ),
              // child: Text(
              //   'Enter Promo Code',
              //   style: SafeGoogleFont (
              //     'Roboto',
              //     fontSize: 14*ffem,
              //     fontWeight: FontWeight.w400,
              //     height: 1.1725*ffem/fem,
              //     color: Color(0xff979797),
              //   ),
              // ),
              child: const TextField(
                decoration: InputDecoration (
                  border: InputBorder.none,
                  hintText: "Enter Promo Code"
                ),
              ),

            ),
            Container(
              // promosRFL (2:1080)
              margin: EdgeInsets.fromLTRB(0.96*fem, 0*fem, 0.96*fem, 26.6*fem),
              width: double.infinity,
              height: 72.02*fem,
              child: Stack(
                children: [
                  Positioned(
                    // xFG (2:1081)
                    left: 0*fem,
                    top: 0*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(270.8*fem, 28.81*fem, 19.21*fem, 28.81*fem),
                      width: 304.41*fem,
                      height: 72.02*fem,
                      decoration: BoxDecoration (
                        border: Border.all(color: Color(0xfff2f2f7)),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(8*fem),
                      ),
                      child: Align(
                        // icgreenticketn (2:1083)
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                          width: 14.4*fem,
                          height: 14.4*fem,
                          child: Image.asset(
                            'assets/page-1/images/icgreentick.png',
                            width: 14.4*fem,
                            height: 14.4*fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // bijoy23BNv (2:1086)
                    left: 15.7072753906*fem,
                    top: 33.4716796875*fem,
                    child: Align(
                      child: SizedBox(
                        width: 246*fem,
                        height: 29*fem,
                        child: Text(
                          'Enjoy 25% discount on your next order! Upto ৳100, minimum order value ৳400)',
                          style: SafeGoogleFont (
                            'Barlow',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // fja4usSZk (2:1087)
                    left: 15.7072753906*fem,
                    top: 7.4716796875*fem,
                    child: Align(
                      child: SizedBox(
                        width: 204*fem,
                        height: 20*fem,
                        child: Text(
                          'DISCOUNT ON DIAGNOSTICS',
                          style: SafeGoogleFont (
                            'Barlow',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2*ffem/fem,
                            letterSpacing: 0.25*fem,
                            color: Color(0xff2c5bb2),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                // apply9UA (2:1077)
                width: double.infinity,
                height: 48.01*fem,
                decoration: BoxDecoration (
                  color: Color(0xff226cc3),
                  borderRadius: BorderRadius.circular(3*fem),
                ),
                child: Center(
                  child: Text(
                    'Apply',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Aeroport',
                      fontSize: 16*ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xffffffff),
                    ),
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
