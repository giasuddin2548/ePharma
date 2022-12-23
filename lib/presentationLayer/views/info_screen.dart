import 'package:badges/badges.dart';
import 'package:ephrama/myUtils/utils.dart';
import 'package:ephrama/presentationLayer/views/textfield.dart';
import 'package:ephrama/presentationLayer/views/textfield2.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../businessLogicLayer/home_screen_controller.dart';
import '../../myUtils/app_constant.dart';

class InfoScreen extends StatelessWidget {
  final _controller=Get.put(HomeScreenController());
  var emailController=TextEditingController();
  var nameController=TextEditingController();
  var addressController=TextEditingController();
  var postController=TextEditingController();
  var mobileController=TextEditingController();
  var email2Controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    nameController.text='Abdullah Al Noman';
    email2Controller.text='hi@example.com';
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return  Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
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
          children: [

            Container(
              padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    'Shipping Information Form',
                      style: SafeGoogleFont (
                        'Aeroport',
                        fontSize: 15*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2575*ffem/fem,
                        color: const Color(0xff1a1a1a),
                      )
                  ),
                  const SizedBox(height: 10,),
                  Container(height: 2,color: Colors.grey.withOpacity(0.2),),
                  const SizedBox(height: 10,),
                  TitleDataWidget(title: "Name",data: MyTextField2(h: 50, editingController: nameController, enableOrDisable: true, hints: 'Abdullah Al Noman', errorMessage: 'Mailing Address is required', icon:Icon(Icons.app_registration,color: Colors.black,size: 15,), isRequired: false, inputType: TextInputType.text,), dataAlignment: 'left',titleAlignment: 'dd',),
                  const SizedBox(height: 10,),
                  Container(height: 1,color: Colors.grey.withOpacity(0.2),),
                  const SizedBox(height: 10,),
                  TitleDataWidget(title: "Email",data: MyTextField2(h: 50, editingController: emailController, enableOrDisable: true, hints: 'example@gmail.com', errorMessage: 'Mailing Address is required', icon:Icon(Icons.app_registration,color: Colors.black,size: 15,), isRequired: false, inputType: TextInputType.text,), dataAlignment: 'left',titleAlignment: 'dd',),
                  const SizedBox(height: 10,),
                  Container(height: 1,color: Colors.grey.withOpacity(0.2),),
                  const SizedBox(height: 10,),

                  TitleDataWidget(title: "Address",data: MyTextField2(h: 50, editingController: addressController, enableOrDisable: true, hints: 'Flat / House / Road  ', errorMessage: 'Mailing Address is required', icon:Icon(Icons.app_registration,color: Colors.black,size: 15,), isRequired: false, inputType: TextInputType.text,), dataAlignment: 'left',titleAlignment: 'dd',),
                  const SizedBox(height: 10,),
                  Container(height: 1,color: Colors.grey.withOpacity(0.2),),
                  const SizedBox(height: 10,),

                  TitleDataWidget(title: "Post",data: MyTextField2(h: 50, editingController: postController, enableOrDisable: true, hints: 'Post Code', errorMessage: 'Mailing Address is required', icon:Icon(Icons.app_registration,color: Colors.black,size: 15,), isRequired: false, inputType: TextInputType.text,), dataAlignment: 'left',titleAlignment: 'dd',),
                ],
              ),
              ),
         //   const Divider(height: 20,),
            Container(height: 10,color: Colors.grey.withOpacity(0.2),),
            Container(
              padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    'Invoice information',
                    style: SafeGoogleFont (
                      'Aeroport',
                      fontSize: 15*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff1a1a1a),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(height: 1,color: Colors.grey.withOpacity(0.2),),
                  const SizedBox(height: 10,),
                  TitleDataWidget(title: "Email",data: MyTextField2(h: 50, editingController: email2Controller, enableOrDisable: true, hints: 'hi@example.com', errorMessage: 'Mailing Address is required', icon:Icon(Icons.app_registration,color: Colors.black,size: 15,), isRequired: false, inputType: TextInputType.text,), dataAlignment: 'left',titleAlignment: 'dd',),
                  Container(height: 1,color: Colors.grey.withOpacity(0.2),),
                  const SizedBox(height: 10,),
                  TitleDataWidget(title: "Mobile No",data: MyTextField2(h: 50, editingController: mobileController, enableOrDisable: true, hints: '+8801710000000', errorMessage: 'Mailing Address is required', icon:Icon(Icons.app_registration,color: Colors.black,size: 15,), isRequired: false, inputType: TextInputType.text,), dataAlignment: 'left',titleAlignment: 'dd',),
                ],
              ),
              ),

            Container(
              margin: const EdgeInsets.only(left: 10, top: 10),
              // width: 223*fem,
              height: 24*fem,
              child: Row(
             //   crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GetBuilder<HomeScreenController>(builder: (uuu){
                    var d=uuu.tempItemList.where((data) => data.itemIsSelected==true).length;
                    var ddd=uuu.tempItemList.where((data) => data.itemIsSelected==true).toList();
                    var total=0.0;
                    for (var element in ddd) {
                      total=total+(element.itemPriceCurrent*element.itemQuantity);
                    }


                    return Checkbox(value: uuu.condition.value, onChanged: (v){
                      uuu.condition.value=!uuu.condition.value;
                      uuu.update();
                    });

                  }),
                  RichText(
                    // iagreewithtermsgCe (1:564)
                    text: TextSpan(
                      style: SafeGoogleFont (
                        'BarlowSemiCondensed',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.3670000349*ffem/fem,
                        color: Color(0xff767676),
                      ),
                      children: [
                        TextSpan(
                          text: 'I Agree with ',
                          style: SafeGoogleFont (
                            'Aeroport',
                            fontSize: 14*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575*ffem/fem,
                            color: Color(0xff767676),
                          ),
                        ),
                        TextSpan(
                          text: 'Terms & Conditions',
                          style: SafeGoogleFont (
                            'Aeroport',
                            fontSize: 14*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575*ffem/fem,
                            color: Color(0xff2e3191),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 300,
            ),
            Container(height: 2,color: Colors.grey.withOpacity(0.2),),
            Container(
              margin: EdgeInsets.fromLTRB(0, 5*fem, 0*fem, 5*fem),
              width: 331*fem,
              height: 48*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // totaliA2 (1:545)
                    margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 41*fem, 3*fem),
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // totalpayablerX8 (1:546)
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
                            // AGv (1:547)
                            '৳${(total-uuu.savedAmount.value).toStringAsFixed(2)}',
                            style: SafeGoogleFont (
                              'Aeroport',
                              fontSize: 17*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2575*ffem/fem,
                              color: Color(0xff0c1026),
                            ),
                          );

                        })

                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      if(nameController.text.isEmpty){
                        Fluttertoast.showToast(msg: 'Name is required');
                      }else if(emailController.text.isEmpty){
                        Fluttertoast.showToast(msg: 'Email is required');
                      }else if(mobileController.text.isEmpty){
                        Fluttertoast.showToast(msg: 'Mobile is required');
                      }else if(addressController.text.isEmpty){
                        Fluttertoast.showToast(msg: 'Address is required');
                      } else if(_controller.condition.value==true){
                        Navigator.pushNamed(context, AppConstant.paymentScreen);
                      }else{
                        Fluttertoast.showToast(msg: 'Please check trams and condition');
                      }
                    },
                    child: Container(
                      // loginwiithphoneukJ (1:549)
                      width: 214*fem,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        color: const Color(0xff226cc3),
                        borderRadius: BorderRadius.circular(3*fem),
                      ),
                      child: Center(
                        child: Text(
                          'Confirm',
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
    );
  }

}
