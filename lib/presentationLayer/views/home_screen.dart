
import 'package:ephrama/businessLogicLayer/all_controller.dart';
import 'package:ephrama/myUtils/app_constant.dart';
import 'package:ephrama/myUtils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {

  double baseWidth = 360;
  double fem = 0.0;
  double ffem=0.0;
  final _controller=Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    fem=MediaQuery.of(context).size.width / baseWidth;
    ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:PreferredSize(
        preferredSize:  Size.fromHeight(151*fem),
        child:Container(
          padding: EdgeInsets.fromLTRB(5*fem, 13*fem, 5*fem, 24*fem),
          width: 360*fem,
          height: 151*fem,
          decoration: BoxDecoration (
            color: const Color(0xffffffff),
            boxShadow: [
              BoxShadow(
                color:const  Color(0x19000000),
                offset: Offset(0*fem, 6*fem),
                blurRadius: 5*fem,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 11*fem),
                height: 17*fem,
              ),
              Container(
                // autogroup53a2Mnv (74vrW72gUrb8gZ8vxa53a2)
                margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 10*fem, 15.02*fem),
                width: double.infinity,
                height: 30*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupeuceHAn (74vrj1pqTywweYf13ueucE)
                      padding: EdgeInsets.fromLTRB(0*fem, 4.82*fem, 104.5*fem, 4*fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // icbackcircleDKL (1:47)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 124.54*fem, 5.07*fem),
                            width: 9.96*fem,
                            height: 16.11*fem,
                            child: Image.asset(
                              'assets/page-1/images/icback-circle.png',
                              width: 9.96*fem,
                              height: 16.11*fem,
                            ),
                          ),
                          Container(
                            // medicineuhx (1:50)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.18*fem, 0*fem, 0*fem),
                            child: Text(
                              'Medicine',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Aeroport',
                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2575*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GetBuilder<HomeScreenController>(builder: (uuu){
                      var d=uuu.tempItemList.where((data) => data.itemIsSelected==true).length;
                      var ddd=uuu.tempItemList.where((data) => data.itemIsSelected==true).toList();
                      return InkWell(
                        onTap: (){
                          if(ddd.isNotEmpty){
                            // _cartController.cartList.addAll(d);
                            Navigator.pushNamed(context, AppConstant.cartScreen);
                          }
                        },
                        child: SizedBox(
                          // group26359csG (1:60)
                          width: 27*fem,
                          height: double.infinity,
                          child: Stack(
                            children: [
                              Positioned(
                                // vectoryC2 (1:61)
                                left: 0*fem,
                                top: 8*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 21*fem,
                                    height: 22*fem,
                                    child: Icon(Icons.shopping_cart_outlined),
                                  ),
                                ),
                              ),
                              Positioned(
                                // rectangle23gs8 (1:62)
                                left: 9*fem,
                                top: 0*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 18*fem,
                                    height: 18*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(9*fem),
                                        color: Color(0xff38b449),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x3f000000),
                                            offset: Offset(0*fem, 4*fem),
                                            blurRadius: 2*fem,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // headlineheaderdrchatbeforestar (1:63)
                                left: 15*fem,
                                top: 3*fem,
                                child: Text(
                                  '$d',
                                  style: SafeGoogleFont (
                                    'Barlow',
                                    fontSize: 11*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2*ffem/fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),

                              ),
                            ],
                          ),
                        ),
                      );

                    })

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 10*fem, 0*fem),
                padding: EdgeInsets.fromLTRB(5*fem, 0*fem, 5*fem, 0*fem),
                width: 340*fem,
                height: 40.98*fem,
                decoration: BoxDecoration(
                  color: const Color(0xffF2F2F7),
                  borderRadius: BorderRadius.circular(5)
                ),
                child:  TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'What are you searching for?'

                  ),
                  onChanged: (v){
                    _controller.searchData(v);
                  },
                ),

              ),
            ],
          ),
        ),
      ) ,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Align(
              child: SizedBox(
                width: 24*fem,
                height: 24*fem,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child:Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.fromLTRB(13.4*fem, 0*fem, 0*fem, 4*fem),
              width: 61*fem,
              height: 21*fem,
              child: Text(
                'Medicine',

                style: SafeGoogleFont (
                  'Aeroport',
                  fontSize: 16*ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.2575*ffem/fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: GetBuilder<HomeScreenController>(builder: (myController){

              return MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: _tempItemList(context),
              );
            }),
          )
        ],
      ),
    );
  }
  _tempItemList(BuildContext context) {

    return MediaQuery.removePadding(
        removeTop: true,
        context: context, child: GetBuilder<HomeScreenController>(builder: (oController){

          return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: oController.tempItemList.length,
              itemBuilder: (c, index){
                var d=oController.tempItemList[index];

                return InkWell(
                  onTap: (){
                    oController.selectedIndexForDetails=index;
                    Navigator.pushNamed(context, AppConstant.detailsScreen);
                  },
                  child: Column(
                    children: [
                      Container(

                        width: Get.width,
                        margin: EdgeInsets.fromLTRB(13.4*fem, 0*fem, 0*fem, 4*fem),
                        child: Text(
                          d.itemTitle,
                          style: SafeGoogleFont (
                            'Aeroport',
                            fontSize: 14*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575*ffem/fem,
                            color: const Color(0xff0c1026),
                          ),
                        ),
                      ),
                      Container(
                        width: Get.width,
                        margin: EdgeInsets.fromLTRB(13.4*fem, 0*fem, 0*fem, 4*fem),

                        child: GetBuilder<HomeScreenController>(builder: (tempController)=>Row(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              // color: Colors.green,
                              height: 30,
                              width: (Get.width*0.7)-10,
                              child: Text(d.companyName, style: SafeGoogleFont (
                                'Aeroport',
                                fontSize: 10*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xff767676),
                              ),),
                            ),
                            Container(
                              alignment: Alignment.center,
                              // color: Colors.blue,
                              height: 30,
                              width: (Get.width*0.3)-10,
                              child:  d.itemIsSelected==true?_quantity(context, (){
                                d.itemQuantity++;
                                tempController.update();
                              }, (){
                                if(d.itemQuantity==1){
                                  d.itemQuantity=0;
                                  d.itemIsSelected=false;
                                  tempController.update();
                                }else{
                                  d.itemQuantity--;
                                  // d.itemIsSelected=false;
                                  tempController.update();
                                }

                              }, d.itemQuantity.toString()):InkWell(
                                  onTap: (){
                                    d.itemQuantity++;
                                    d.itemIsSelected=true;
                                    tempController.update();
                                  },
                                  child:  Container(
                                    // addtocartKFk (1:107)
                                    margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                                    child: Text(
                                      'Add to Cart',
                                      textAlign: TextAlign.right,
                                      style: SafeGoogleFont (
                                        'Aeroport',
                                        fontSize: 11*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2575*ffem/fem,
                                        color: Color(0xff1c1c1e),
                                      ),
                                    ),
                                  )),
                            ),
                          ],
                        )),
                      ),
                      Container(
                        width: Get.width,
                        margin: EdgeInsets.fromLTRB(13.4*fem, 0*fem, 0*fem, 4*fem),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // wnv (1:105)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 17.7*fem, 0*fem),
                              child: Text(
                                '৳${d.itemPriceCurrent}',
                                style: SafeGoogleFont (
                                  'Aeroport',
                                  fontSize: 13*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2575*ffem/fem,
                                  color: const Color(0xff0099ff),
                                ),
                              ),
                            ),
                            Container(
                              // fU2 (1:106)
                              margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                              child: Text(
                                '৳${d.itemPriceOld}',
                                style: SafeGoogleFont (
                                  'Aeroport',
                                  fontSize: 10*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575*ffem/fem,
                                  decoration: TextDecoration.lineThrough,
                                  color: const Color(0xff767676),
                                  decorationColor: const Color(0xff767676),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(height: 1,color: Colors.grey.withOpacity(0.1),),
                    ],
                  ),
                );


              });
        }));
  }
  _quantity(BuildContext context, VoidCallback incement, VoidCallback decremnt, String data) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: incement,
          child: Container(
            decoration:  BoxDecoration(

                borderRadius: const BorderRadius.all(Radius.circular(50)),
                border: Border.all(color: Color(0xff0c1026))
            ),
            width: 21*fem,
            height: 21*fem,child:  Icon(Icons.add,size: 18*fem,),),
        ),
        Text(data, style: SafeGoogleFont (
          'Aeroport',
          fontSize: 12*ffem,
          fontWeight: FontWeight.w500,
          height: 1.2575*ffem/fem,
          color: const Color(0xff0c1026),
        ),),

        InkWell(
          onTap: decremnt,
          child: Container(
            decoration:  BoxDecoration(

                borderRadius: const BorderRadius.all(Radius.circular(50)),
                border: Border.all(color: Color(0xff0c1026))
            ),
            width: 21*fem,
            height: 21*fem,child:  Icon(Icons.remove, size: 18*fem,),),
        ),
      ],
    );
  }
}

