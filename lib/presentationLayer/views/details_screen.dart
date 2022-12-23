import 'package:badges/badges.dart';
import 'package:ephrama/myUtils/app_constant.dart';
import 'package:ephrama/myUtils/utils.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../../businessLogicLayer/home_screen_controller.dart';
class DetailsScreen extends StatelessWidget {


  double baseWidth = 360;
  double fem = 0.0;
  double ffem=0.0;
  final _controller=Get.put(HomeScreenController());

  DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    fem=MediaQuery.of(context).size.width / baseWidth;
    ffem = fem * 0.97;
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        shadowColor: Colors.grey,
        title: const Center(child: Text('Product', style: TextStyle(color: Colors.black),)),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios, color: Colors.black,)),

        actions: [
          IconButton(onPressed: (){
            var d=_controller.tempItemList.where((data) => data.itemIsSelected==true).toList();
            if(d.isNotEmpty){
              // _cartController.cartList.addAll(d);
              //  Navigator.pushNamed(context, AppConstant.cartScreen);
            }
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
      body: _dd(context),

    );
  }

  _dd(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            width: double.infinity,
            child: Obx(() => Container(
              width: double.infinity,
              height: 800*fem,
              decoration: const BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // autogroup3moqUFQ (74vxTS7H1PHNcEGcSU3moQ)
                    left: 0*fem,
                    top: 0*fem,
                    child: SizedBox(
                      width: 360*fem,
                      // height: 616*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            // imagetK8 (1:153)
                            width: double.infinity,
                            height: 300*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // vivacheckecobloodaxe (1:154)
                                  left: 17.2802734375*fem,
                                  top: 261*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 282*fem,
                                      height: 16*fem,
                                      child: Text(
                                        'Viva check eco blood glucose monitoring system',
                                        style: SafeGoogleFont (
                                          'BarlowSemiCondensed',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.1428571429*ffem/fem,
                                          color: const Color(0xff231f20),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // TWe (1:155)
                                  left: 17.2802734375*fem,
                                  top: 216*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 31*fem,
                                      height: 33*fem,
                                      child: RichText(
                                        text: TextSpan(
                                          style: SafeGoogleFont (
                                            'KohinoorBangla',
                                            fontSize: 26*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.5*ffem/fem,
                                            letterSpacing: -0.1368421018*fem,
                                            color: const Color(0xff1995d2),
                                          ),
                                          children: [
                                            TextSpan(
                                              text: '৳',
                                              style: SafeGoogleFont (
                                                'Kohinoor Bangla',
                                                fontSize: 26*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.2575*ffem/fem,
                                                letterSpacing: -0.1368421018*fem,
                                                color: const Color(0xff1995d2),
                                              ),
                                            ),
                                            TextSpan(
                                              text: '0',
                                              style: SafeGoogleFont (
                                                'Barlow Semi Condensed',
                                                fontSize: 26*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2575*ffem/fem,
                                                letterSpacing: -0.1368421018*fem,
                                                color: const Color(0xff1995d2),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // imggGv (1:156)
                                  left: 0*fem,
                                  top: -20*fem,
                                  child: Container(
                                    width: 360*fem,
                                    height: 360*fem,
                                    decoration: BoxDecoration (
                                      border: Border.all(color: const Color(0xffebebeb)),
                                      image: const DecorationImage (
                                        fit: BoxFit.cover,
                                        image: AssetImage (
                                          'assets/page-1/images/mask-5-bg.png',
                                        ),
                                      ),
                                    ),
                                    child: Center(
                                      // autogroupqpsqMtr (74vL6jBuhqotQ7c9S8qPsQ)
                                      child: SizedBox(
                                        width: 360*fem,
                                        height: 360*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/auto-group-qpsq.png',
                                          width: 360*fem,
                                          height: 360*fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogrouphftngRL (74vxd1feeA2sqhydc3Hftn)
                            padding: EdgeInsets.fromLTRB(12*fem, 13*fem, 7*fem, 39*fem),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // namepriceyvE (1:148)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 19*fem),
                                  padding: EdgeInsets.fromLTRB(0.48*fem, 0*fem, 0.48*fem, 6*fem),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // autogroup8is4HAE (74vxs1GLKFPZX4nShT8is4)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 256.52*fem, 7*fem),
                                        width: double.infinity,
                                        child: FittedBox(
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // NBg (1:150)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.52*fem, 0*fem),
                                                child: Text(
                                                  '৳${_controller.tempItemList[_controller.selectedIndexForDetails].itemPriceCurrent}',
                                                  style: SafeGoogleFont (
                                                    'Aeroport',
                                                    fontSize: 34*ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.2058823529*ffem/fem,
                                                    color: const Color(0xff0099ff),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // 5bt (1:151)
                                                margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 0*fem, 0*fem),
                                                child: Text(
                                                  '৳${_controller.tempItemList[_controller.selectedIndexForDetails].itemPriceOld}',
                                                  style: SafeGoogleFont (
                                                    'Aeroport',
                                                    fontSize: 11*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2575*ffem/fem,
                                                    decoration: TextDecoration.lineThrough,
                                                    color:const Color(0xff9da0a3),
                                                    decorationColor:const Color(0xff9da0a3),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // konfortautomaticdibKL (1:149)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8.36*fem),
                                        child: Text(
                                          _controller.tempItemList[_controller.selectedIndexForDetails].itemTitle,
                                          style: SafeGoogleFont (
                                            'Aeroport',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575*ffem/fem,
                                            color:const Color(0xff0c1026),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // poweredby61C (1:152)
                                        margin: EdgeInsets.fromLTRB(0.52*fem, 0*fem, 0*fem, 0*fem),
                                        child: Text(
                                          _controller.tempItemList[_controller.selectedIndexForDetails].companyName,
                                          style: SafeGoogleFont (
                                            'Aeroport',
                                            fontSize: 11*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575*ffem/fem,
                                            color: const Color(0xff767676),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // shortdescriptionowC (1:144)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.44*fem, 0*fem),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // line20k5k (1:147)
                                        margin: EdgeInsets.fromLTRB(1.44*fem, 0*fem, 0*fem, 12*fem),
                                        width: 333.12*fem,
                                        height: 0.96*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/line-20.png',
                                          width: 333.12*fem,
                                          height: 0.96*fem,
                                        ),
                                      ),
                                      Container(
                                        // shortdescriptionrPg (1:146)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14.04*fem),
                                        child: Text(
                                          'Short Description',
                                          style: SafeGoogleFont (
                                            'Aeroport',
                                            fontSize: 15*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575*ffem/fem,
                                            color: const Color(0xff1a1a1a),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // sleeksmallsizest1ft (1:145)
                                        constraints: BoxConstraints (
                                          maxWidth: 324*fem,
                                        ),
                                        child: Text(

                                      '${_controller.tempItemList[_controller.selectedIndexForDetails].itemTitle} ${_controller.tempItemList[_controller.selectedIndexForDetails].description}',
                                          style: SafeGoogleFont (
                                            'Aeroport',
                                            fontSize: 13*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575*ffem/fem,
                                            color: const Color(0xff767676),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // autogroupdj3qQWJ (74vyq9KTaY3fRKuLvBdj3Q)
                    left: 16*fem,
                    top: 730*fem,
                    child: SizedBox(
                      width: 329.5*fem,
                      height: 48*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap:(){
                              if(_controller.tempItemList[_controller.selectedIndexForDetails].itemIsSelected==false){
                                _controller.tempItemList[_controller.selectedIndexForDetails].itemIsSelected=true;
                                _controller.tempItemList[_controller.selectedIndexForDetails].itemQuantity=1;
                                _controller.update();
                              }else{
                                Fluttertoast.showToast(msg: "Already in cart");
                              }
                            },
                            child: Container(
                              // loginwiithphonejHg (1:175)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18.5*fem, 0*fem),
                              width: 155.5*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: const Color(0xff226cc3)),
                                color: const Color(0x19226cc3),
                                borderRadius: BorderRadius.circular(3*fem),
                              ),
                              child: Center(
                                child: Text(
                                  'Add To Cart',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Aeroport',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2857142857*ffem/fem,
                                    color: const Color(0xff226cc3),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              _controller.tempItemList[_controller.selectedIndexForDetails].itemIsSelected=true;
                              _controller.tempItemList[_controller.selectedIndexForDetails].itemQuantity=1;
                              _controller.update();
                              Navigator.pushNamed(context, AppConstant.infoScreen);
                            },
                            child: Container(
                              // loginwiithphonebqg (1:178)
                              width: 155.5*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: const Color(0xff226cc3),
                                borderRadius: BorderRadius.circular(3*fem),
                              ),
                              child: Center(
                                child: Text(
                                  'Buy Now',
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
                  ),
                  Positioned(
                    // vectorfKk (1:181)
                    left: 321*fem,
                    top: 63*fem,
                    child: Align(
                      child: SizedBox(
                        width: 24*fem,
                        height: 24*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-8uU.png',
                          width: 24*fem,
                          height: 24*fem,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
          ),
        ),

      ],
    );
  }
}
